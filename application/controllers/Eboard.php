<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Eboard extends CI_Controller {
	
	public function __construct(){  
        parent::__construct();
		error_reporting(0);
		$this->load->model('m_eboard');
    }
	
	public function index()
	{
		$data['ship']= $this->m_eboard->ship();
		$data['video']= $this->m_eboard->video();
		$data['bulletin']= $this->m_eboard->bulletin();
		$this->load->view('eboard', $data);
	}
	
}
