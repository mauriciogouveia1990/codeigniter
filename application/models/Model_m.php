<?php
class Model_m extends CI_Model {

    public function __construct()
    {
        parent::__construct();
    }

    public function checkLogin($data = array()){
        return $this->db->get_where('utilizador', array('email' => $data['email']))->row_array();
    }

    public function insertUser($data = array()){

        $this->db->insert('utilizador', $data);
    }

    public function insereToken($token){
        return $this->db->insert("token",$token);
    }
    
    public  function verificaToken($idUtilizador){
        return $this->db->get_where('token', array('utilizador_id' => $idUtilizador))->row_array();    
    }

    public  function updateToken($tokenValue,$idUtilizador){
        $this->db->where('utilizador_id', $idUtilizador);
        return $this->db->update('token', array('value'=>$tokenValue));   
    }

    public  function eliminaToken($tokenValue){
        $this->db->where('value', $tokenValue);
        return $this->db->delete('token');    
    }

    public function updatePassword($password,$id){
        $this->db->set('password', $password);
        $this->db->where('id', $id);
        $this->db->update('utilizador');
    }
}