<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        if ($this->session->userdata('logged_in') == true) {
            $this->session->set_flashdata('msg', 'Welcome Back');
            redirect('admin/dashboard');
        }
    }

    public function index() {

        $this->load->view('admin/login');
    }

    public function admin_login() {
        $ip = $_SERVER['REMOTE_ADDR'];

        $ipcheck = $this->admin_model->ip_checking($ip);

        if ($ipcheck != '') {
            $username = $this->input->post('username', TRUE);
            $password = $this->input->post('password', TRUE);
            $password = md5($password);
            $row = $this->admin_model->admin_login($username, $password);
            if ($row != "") {
                $sess_arr = array(
                    'id' => $row->id,
                    'username' => $row->username,
                    'logged_in' => true
                );

                $this->session->set_flashdata('msg', 'Welcome');
                $this->session->set_userdata($sess_arr);
                redirect('admin/dashboard');
            } else {

                $this->session->set_flashdata('error', 'Invalid Username Or Password');
                redirect('admin/login');
            }
        } else {
            $this->session->set_flashdata('error', 'Access Denied');
            redirect('admin/login');
        }
    }

}
