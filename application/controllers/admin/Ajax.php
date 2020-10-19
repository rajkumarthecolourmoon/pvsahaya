<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Ajax extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        if ($this->session->userdata('logged_in') != true) {

        } else {
            //
        }
    }

    public function index() {
        $state_id = $this->input->get_post('state_id', TRUE);
        $results = $this->db->get_where('cities', ['state_id' => $state_id])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }
    public function get_locations() {
        $city_id= $this->input->get_post('city_id', TRUE);
        $results = $this->db->get_where('locations', ['city_id' => $city_id])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }

    public function get_sub_sub_categories() {
        $cid = $this->input->get_post('cid', TRUE);
        $results = $this->db->get_where('sub_sub_category', ['cid' => $cid])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }

    public function get_filter_value_from_subcat() {
        $sid = $this->input->get_post('sid', TRUE);
        $cid = $this->input->get_post('cid', TRUE);
        $results = $this->db->get_where('filter_group', ['sid' => $sid, 'cid' => $cid])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }

    public function get_filter_value_from_sub_subcat() {
        $ssid = $this->input->get_post('ssid', TRUE);
        $cid = $this->input->get_post('cid', TRUE);
        echo "<option value=''>--Select--</option>";
        $results = $this->db->get_where('filter_group_sub_sub_category', ['ssid' => $ssid, 'cid' => $cid])->result();
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }
    public function get_filter_value_from_filter_group() {
        $ffid = $this->input->get_post('ffid', TRUE);
        echo "<option value=''>--Select--</option>";
        $results = $this->db->get_where('filter_values_sub_sub_category', ['ffid' => $ffid])->result();
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }

    public function get_sub_subcat_from_subcat() {
        $sid = $this->input->get_post('sid', TRUE);
        $cid = $this->input->get_post('cid', TRUE);
        $results = $this->db->get_where('sub_sub_category', ['sid' => $sid, 'cid' => $cid])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }
    public function get_products_from_sub_sub_cat() {
        $ssid = $this->input->get_post('ssid', TRUE);
        $results = $this->db->get_where('products', ['ssid' => $ssid])->result();
        echo "<option value=''>--Select--</option>";
        foreach ($results as $result) {
            echo "<option value='$result->id'>$result->name</option>";
        }
    }
    public function get_latitude_longitude_from_vendor_id() {
        $this->output->set_content_type('application/json');
        $vid = $this->input->get_post('vid', TRUE);
        $results = $this->db->get_where('vendors', ['id' => $vid])->row();
        $reponse[] = array('latitude'=>$results->latitude,'longitude'=>$results->longitude);
        echo json_encode($reponse);
    }
    public function get_latitude_longitude_from_city_id() {
        $this->output->set_content_type('application/json');
        $id = $this->input->get_post('id', TRUE);
        $results = $this->db->get_where('cities', ['id' => $id])->row();
        $reponse[] = array('latitude'=>$results->latitude,'longitude'=>$results->longitude,'city_name'=>$results->name);
        $this->session->set_userdata('city_name',$results->name);
        echo json_encode($reponse);
    }
    public function get_filters_from_subsubcat() {
        $ssid = $this->input->get_post('ssid', TRUE);
        $cid = $this->input->get_post('cid', TRUE);
        $results = $this->db->get_where('filter_group_sub_sub_category', ['ssid' => $ssid, 'cid' => $cid])->result();
        foreach ($results as $result) {
             echo "<div class='form-group'>";
             echo "<label for='name'>$result->name</label>";
             echo "<input type='hidden' value='$result->id' name='filter_group_id[]'>";
             echo "<select class='form-control filgr' name='filter_value_id[]'>";
             echo "<option value=''>--Select--</option>";
             $filtervalues = $this->db->get_where('filter_values_sub_sub_category',['ffid'=>$result->id])->result();
             foreach ($filtervalues as $filtervalue){
              echo "<option value='$filtervalue->id'>$filtervalue->name</option>";  
             }
             echo "</select>";
             echo "</div>";
        }
    }
    

}
