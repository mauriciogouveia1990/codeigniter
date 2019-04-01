<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_c extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		/*call CodeIgniter's default Constructor*/
		parent::__construct();
		
        $this->load->model('Model_m');
    }
    
    public function index($page = 'home')
	{
		if ( ! file_exists(APPPATH.'views/public/'.$page.'.php'))
		{
				// Whoops, we don't have a page for that!
				show_404();
		}

		$data['title'] = ucfirst($page); // Capitalize the first letter

		if (get_cookie('usercookie') != null) {
			
			$user['email'] = get_cookie('usercookie'); // check email on cookie
			$userData = $this->Model_m->checkLogin($user); // check if cookie's email is valid
			$this->session->set_userdata('sessao_utilizador',$userData); //session start
		}

		// var_dump(get_cookie('usercookie'));

        $this->load->view('Templates/Header', $data);
        $this->load->view('Templates/Navbar', $data);
		$this->load->view('Public/'.$page, $data);
		$this->load->view('Templates/Footer');
	}

	function login(){

		if (($this->session->userdata('sessao_utilizador')) !== null) {
			redirect('home');
		}

		$data['title'] = "Login";
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == true) {

			$user['email'] = $this->security->xss_clean($this->input->post('email'));
			$user['password'] = $this->security->xss_clean($this->input->post('password'));
			$userData = $this->Model_m->checkLogin($user);

			// check if email exists on database
			if($userData == null){
				$this->session->set_flashdata('erroLogin', 'Email inexistente na base de dados'); // error message
				$this->session->set_flashdata('erroEmail', $email); //email to put back on form
				redirect('login');
			}
		
			//password verify
			$checkPassword = password_verify($user['password'], $userData['password']);

			// if all data is correct to login
			if ($checkPassword != true) { // if invalid data
				$this->session->set_flashdata('erroLogin', 'Dados de login incorretos'); // error message
				$this->session->set_flashdata('erroEmail', $user['email']); //email to put back on form
				redirect('login');
			} else {
				$this->session->set_userdata('sessao_utilizador',$userData); //session start
				if ($this->input->post('rememberme')) {
					$this->input->set_cookie('usercookie', $userData['email'], 604800); /* add cookie */
				} else {
					delete_cookie('usercookie'); /* delete cookie */
				}
				redirect('home');
			}
		} else {
			$this->load->view('Templates/Header', $data);
            $this->load->view('Templates/Navbar', $data);
			$this->load->view('Public/login', $data);
			$this->load->view('Templates/Footer');
		}

	}

	public function logout()
	{
		$this->session->sess_destroy();
		delete_cookie('usercookie'); // apaga cookie rememberme
		redirect('home');
	}

	public function registo()
	{
		$data['title'] = "Registo";
		if (($this->session->userdata('sessao_utilizador')) !== null) {
			redirect('home');
		}

		if (($this->input->post('email')) !== null) {

			 //---------------- codigo captcha------------------------------------------
			 // chave do site 	6LdOt5AUAAAAAK20_UC56v2G2kHoWU8QU3zvSHx9
			 // chave secreta	6LdOt5AUAAAAAPqkPCflKL_e2VGRPbeze5cAS7Pt
			 
			$url = "https://www.google.com/recaptcha/api/siteverify";
			$respon = $_POST['g-recaptcha-response'];
			$data = array('secret' => "6LdOt5AUAAAAAPqkPCflKL_e2VGRPbeze5cAS7Pt", 'response' => $respon);
			$options = array(
					'http' => array(
						'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
						'method'  => 'POST',
						'content' => http_build_query($data)
					)
			);
			$context  = stream_context_create($options);
			$result = file_get_contents($url, false, $context);
			$resultado = json_decode($result);
	
/* 			$this->form_validation->set_rules('name', 'Nome', 'trim|required|min_length[5]|max_length[20]|xss_clean',
				array('required' => 'Tem de preencher o %s.', 'min_length' => 'O %s tem de ter pelo menos 5 caracteres.')); */
 			$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|xss_clean|is_unique[admin.email]',
 				array('required' => 'Tem de preencher o %s e o mesmo deve ser válido.', 'is_unique' => 'Já existe um registo com este %s'));
			$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[8]|xss_clean|is_unique[admin.username]',
				array('required' => 'Tem de preencher o %s.', 'is_unique' => 'Já existe um registo com este %s'));
			$this->form_validation->set_rules('password', 'Password', 'required|alpha_numeric|min_length[8]|xss_clean',
				array('required' => 'Tem de preencher a %s.', 'min_length' => 'A %s deve conter pelo menos 8 caracteres.', 'alpha_numeric' => 'A %s deve conter letras e números.'));
			$this->form_validation->set_rules('password_confirm', 'Confirmação da Password', 'required|matches[password]|xss_clean',
				array('required' => 'Tem de preencher a %s.', 'matches' => 'A %s deve coincidir com a Password.'));
			$this->form_validation->set_rules('reg_agree','termos e condições','trim|required|xss_clean|greater_than[0]',
				array('required' => 'Tem de preencher os %s.'));

			/**
			 *  if its all ok it will insert user data on database
			 *  second condition will check if captcha its ok
			 */
			if (($this->form_validation->run() == TRUE) && ($resultado->success)) {
				 
				/* 			$nome = $this->input->post('name'); */
				$email = $this->input->post('email');
				$username = $this->input->post('username');
				$password = $this->input->post('password');
				$password = password_hash($password,PASSWORD_DEFAULT);
				$newUserData = array(
					'username' => $username,
					'email' => $email,
					'password' => $password,
					);
				$newUser = $this->Model_m->insertUser($newUserData);
				if ($result != null) {
					$this->session->set_flashdata('sucessoRegisto', 'O seu registo está concluído, pode agora efetuar o login!');
					redirect('login');
				} else {
					$this->session->set_flashdata('erros', 'Não foi possível concluir o seu registo, por favor tente novamente.');
					redirect('registo');
				}
			 }else{								// if it have errors send message
				if (!($resultado->success)) {	// check captcha
					$this->session->set_flashdata('captcha', 'Tem de preencher o captcha');
				}
				
				$errors = validation_errors();
				$this->session->set_flashdata('erros', $errors); //mensagem de erro
			}
		}

		$this->load->view('templates/header', $data);
		$this->load->view('Templates/Navbar', $data);
		$this->load->view('Public/registo', $data);
		$this->load->view('templates/footer');
	}

	function contacto(){

		$data['title'] = "emailContacto";

		if (($this->input->post('email')) !== null) {
			$this->form_validation->set_rules('nomeContacto', 'Nome', 'trim|required');
			$this->form_validation->set_rules('emailContacto', 'Email', 'trim|required|valid_email');
			$this->form_validation->set_rules('assuntoContacto', 'Nome', 'trim|required');
			$this->form_validation->set_rules('mensagemContacto', 'Nome', 'trim|required');

			if ($this->form_validation->run() == true) {
				
				$nome = $this->security->xss_clean($this->input->post('nomeContacto'));
				$email = $this->security->xss_clean($this->input->post('emailContacto'));
				$assunto = $this->security->xss_clean($this->input->post('assuntoContacto'));
				$mensagem = $this->security->xss_clean($this->input->post('mensagemContacto'));

				$this->load->library('email');

				//SMTP & mail configuration
				$config = array(
					'protocol' => 'smtp',
					'smtp_host' => 'ssl://smtp.googlemail.com',
					'smtp_port' => 465,
					'smtp_user' => 'rentacar.bravavalley@gmail.com',
					'smtp_pass' => '1a2s3d4f5g',
					'mailtype' => 'html',
					'charset' => 'utf-8'
				);

				$this->email->initialize($config);
				$this->email->set_mailtype("html");
				$this->email->set_newline("\r\n");

				$this->email->to('mauriciogouveia1990@gmail.com');
				$this->email->from($email, $nome);
				$this->email->subject($assunto);

				$this->email->message($mensagem);

				//Send email
				$this->email->send();

				$this->session->set_flashdata('sucessoFormContacto', 'O seu formulário foi submetido, iremos responder o mais rápido possível.'); //mensagem de sucesso

			} else {
				$this->session->set_flashdata('erroFormContacto', 'Formulário não submetido, por favor tente novamente'); //mensagem de erro
			}
		}

		$this->load->view('Templates/Header', $data);
		$this->load->view('Templates/Navbar', $data);
		$this->load->view('Public/contacto', $data);
		$this->load->view('Templates/Footer');
	}

	public function resetPassword(){

		$data['title'] = 'Reset Password';

		if ($this->input->post('formRegisto')) {
			$user['email'] = $this->security->xss_clean($this->input->post('email'));

			if ($this->Model_m->checkLogin($user) == null) {
				$this->session->set_flashdata('erroResetPassword', 'Email inexistente'); //mensagem de erro
				$this->session->set_flashdata('email', $email); //email do utilizador para ser colocado como value no formulario
				redirect('resetPassword');
			} else {
                //gerar token
				$tokenValue = bin2hex(random_bytes(32));
				$idUtilizador = $this->Model_m->checkLogin($user)['id'];

				$token = array(
					"value" => $tokenValue,
					"utilizador_id" => $idUtilizador
				);

	
                //verifica se utilizador ja tem token associado
				if ($this->Model_m->verificaToken($idUtilizador)) {
					$this->Model_m->updateToken($tokenValue, $idUtilizador); //update token
				} else {
					$this->Model_m->insereToken($token); //inserir token
				}

                //SMTP & mail configuration
				$config = array(
					'protocol' => 'smtp',
					'smtp_host' => 'ssl://smtp.googlemail.com',
					'smtp_port' => 465,
					'smtp_user' => 'rentacar.bravavalley@gmail.com',
					'smtp_pass' => '1a2s3d4f5g',
					'mailtype' => 'html',
					'charset' => 'utf-8'
				);
				$this->email->initialize($config);
				$this->email->set_mailtype("html");
				$this->email->set_newline("\r\n");

				$this->email->to('mauriciogouveia1990@gmail.com');
				$this->email->from('teste@gmail.com', 'Teste');
				$this->email->subject('Reset Password');

				$this->email->message("Click no link para fazer reset da sua password <a href='" . base_url('validaToken?token=') . $tokenValue . "&id=" . $idUtilizador . "'>Fazer reset</a>");

                //Send email
				$this->email->send();


				$this->session->set_flashdata('sucessoResetPassword', 'Foi enviado para o seu email o link para fazer reset à sua password'); //mensagem de sucesso
				redirect('resetPassword');
			}



		} else {
			$this->load->view('Templates/Header', $data);
			$this->load->view('Templates/Navbar', $data);
			$this->load->view('Public/resetPassword');
			$this->load->view('Templates/Footer');

		}


	}

	//modificar password recuperada
	public function validaToken(){
		$data['title'] = "Modificar Password";

		if ($this->input->get('token')) {
			$token = $this->input->get('token');
			$idUtilizador = $this->input->get('id');
			if ($this->Model_m->verificaToken($idUtilizador) != null) {
				$tokenMail = $this->Model_m->verificaToken($idUtilizador);
				if ($token == $tokenMail['value']) {
					$data['token'] = $this->Model_m->verificaToken($idUtilizador);

					$this->load->view('Templates/Header', $data);
					$this->load->view('Templates/Navbar', $data);
					$this->load->view('Public/modificaPassword', $data);
					$this->load->view('templates/footer');
				} else {
					echo "O seu Token não é válido";
				}
			}
		} else if ($this->input->post('submitModPassword')) {
			$tokenValue = $this->input->post('tokenValue');
			$idUtilizador = $this->input->post('userId');
			$password = $this->input->post('passwordConf');

			$passwordHashed = password_hash($password, PASSWORD_DEFAULT);

			$this->Model_m->updatePassword($passwordHashed, $idUtilizador);
			$this->Model_m->eliminaToken($tokenValue);

			$this->session->set_flashdata('sucessoModPass', 'Password atualizada com sucesso'); //mensagem de sucesso
			redirect('login');
		}
	}

}