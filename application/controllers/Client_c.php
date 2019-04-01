<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_c extends CI_Controller {

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
		
        $this->load->model('Client_m');
    }
    
    public function search()
	{
        $data['title'] = "Pesquisa";
        
		$data['search']         = $this->load->view('Private/search', null, true);
		$data['client']         = $this->Client_m->getClient();
		$data['client_table']   = $this->load->view('Private/table', $data, true);

        $this->load->view('Templates/Header', $data);
        $this->load->view('Templates/Navbar', $data);
		$this->load->view('Private/client_main', $data);
		$this->load->view('Templates/Footer');
	}

    public function searchClient()
	{
		$details['client_search_input'] = $this->input->post("client_search_input");
		$data['client']                 = $this->Client_m->getClient($details);
		$this->load->view('Private/table', $data);
	}

    public function deleteClient()
	{
		/**
		 * post received by ajax function
		 */
		if( $this->input->post('id')) {
            $this->form_validation->set_rules('id', 'Registo', 'required|numeric');
            if ($this->form_validation->run() == true) {
                $details['id']          = $this->input->post('id');
                $details['date']        = date('Y-m-d H:i:s');
                $result                 = $this->Client_m->deleteClientfromDB($details);
                // check if query return something after update
				$response['success']    =  ($result != null)?true:false;
				$response['message']    = "Sucesso";
		    } else {
				$response['success']    = false;
				$response['message']    = validation_errors();
			}
			echo json_encode($response);
		}
	}

	public function receiveClientChangedData()
	{
		/**
		 * post received by ajax function
		 */
		if ($this->input->post('clientId')) {
			$this->form_validation->set_rules('clientUsername', 'Username', 'trim|required', 
			    array('required' => 'Tem de preencher o %s.'));
            $this->form_validation->set_rules('clientEmail', 'Email', 'trim|required|valid_email',
                array('required' => 'Tem de preencher o %s.'));
			if ($this->form_validation->run() == true) {
                $details['id']			= $this->security->xss_clean($this->input->post('clientId'));
                $details['username']		= $this->security->xss_clean($this->input->post('clientUsername'));
                $details['email']			= $this->security->xss_clean($this->input->post('clientEmail'));
                $details['date']		= date('Y-m-d H:i:s');
				$result					= $this->Client_m->changeClientData($details);
                // check if query return something after update
				$response['success']	=  ($result != null)?true:false;
				$response['message']	= "Sucesso";
		    } else {
				$response['success']	= false;
				$response['message']	= validation_errors();
			}
			echo json_encode($response);
		}

    }

	public function addClient()
	{
		if($this->input->post('clientUsername')){
			$this->form_validation->set_rules('clientUsername', 'Username', 'trim|required|is_unique[utilizador.username]', 
			    array('required' => 'Tem de preencher o %s.', 'is_unique' => 'Já existe um cliente registado com esse %s.'));
            $this->form_validation->set_rules('clientEmail', 'Email', 'trim|required|valid_email|is_unique[utilizador.email]', 
                array('required' => 'Tem de preencher o %s.', 'is_unique' => 'Já existe um cliente registado com esse %s.'));
			if ($this->form_validation->run() == true) {
                $details['username']        = $this->security->xss_clean($this->input->post('clientUsername'));
                $details['email']         = $this->security->xss_clean($this->input->post('clientEmail'));
                $details['created_at']  = date('Y-m-d H:i:s');
				$result				    = $this->Client_m->addClient($details);
                // check if query return something after update
				$response['success']    =  ($result != null)?true:false;
				$response['message']    = "Sucesso";
		    } else {
				$response['success']    = false;
				$response['message']    = validation_errors();
			}
			echo json_encode($response);
		}
	}
}