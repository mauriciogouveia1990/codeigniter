<?php
class Client_m extends CI_Model {

    public function __construct()
    {
        parent::__construct();
    }

    public function getClient( $data = array() )
    {
        $this->db->select("id, username, email");
        $this->db->from("utilizador");
        $this->db->where("deleted_at", NULL);
        if (isset( $data['client_search_input'] ) && !empty( $data['client_search_input'] )) {
            $this->db->group_start();
            $this->db->like('username', $data['client_search_input']);
            $this->db->or_like('email', $data['client_search_input']);
            $this->db->group_end();
        }
        // $this->db->order_by('created_at', 'DESC');
        return $this->db->get()->result();
    }

    public function changeClientData( $data = array() )
    {
        if(!isset($data['id']) || empty($data['id'])){
            return false;
        }
        $this->db->set('username', $data['username']);
        $this->db->set('email', $data['email']);
        $this->db->set('updated_at', $data['email']);
        $this->db->where('id', $data['id']);
        return $this->db->update('utilizador');
    }

    public function deleteClientfromDB( $data = array() )
    {
        $this->db->set('deleted_at', $data['date']);
        $this->db->where('id', $data['id']);
        return $this->db->update('utilizador');
    }

    public function addClient( $data = array() )
    {
        return $this->db->insert('utilizador', $data);
    }
}