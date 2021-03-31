<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_eboard extends CI_Model {
	
	public function ship() {
		$this->db->select('*');
		$this->db->from('ship_tbl');
		$query = $this->db->get ();
		return $query->result();
	}
	
	public function video() {
		$this->db->select('*');
		$this->db->from('video_tbl');
		$query = $this->db->get ();
		return $query->result();
	}
	
	public function bulletin() {
        $query = $this->db->get('bulletin_tbl', 1);
        return $query->result_array();
    }
	
}
