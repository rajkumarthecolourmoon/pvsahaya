<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Orders extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        $this->load->model("vendor_model");
        $this->load->model("orders_model");
        if ($this->session->userdata('logged_in') != true) {
            $this->session->set_flashdata('msg', 'Session Timed Out');
            redirect('admin/login');
        } else {
            $this->data['site_details'] = $this->get_site_details();
        }
    }

    private function get_site_details() {

        return $this->admin_model->get_profile_by_id(1);
    }

    private function clean($string) {
        $string = str_replace(" ", "-", $string); // Replaces all spaces with hyphens.
        $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.

        return preg_replace('/-+/', '-', $string); // Replaces multiple hyphens with single one.
    }

    private function upload_file($file_name) {

        $upload_path1 = "assets/images/";
        $config1['upload_path'] = $upload_path1;
        $config1['allowed_types'] = "gif|jpg|png|jpeg";
        $config1['max_size'] = "20480000";
        $img_name1 = strtolower($_FILES[$file_name]['name']);
        $img_name1 = preg_replace('/[^a-zA-Z0-9\.]/', "_", $img_name1);
        $config1['file_name'] = date("YmdHis") . rand(0, 9999999) . "_" . $img_name1;
        $this->load->library('upload', $config1);
        $this->upload->initialize($config1);
        $this->upload->do_upload($file_name);
        $fileDetailArray1 = $this->upload->data();
        return $fileDetailArray1['file_name'];
    }

    private function insert_data($table, $data) {

        $post_data = $this->input->post(NULL, TRUE);
        $data = array_merge($post_data, $data);
        return $this->admin_model->insert_by_table($table, $data);
    }

    public function index() {
        $this->data['orders'] = $this->orders_model->get_orders();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/orders', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function view_order($id) {
        $this->data['order'] = $this->orders_model->get_order_by_order_id($id);
        $this->data['order_items'] = $this->user_model->get_order_items_by_order_id_final($this->data['order']->order_id);
        $i = 0;
        foreach ($this->data['order_items'] as $order_item) {
            $this->data['order_items'][$i]->lead_type_name = $this->user_model->get_lead_type_by_lead_type_id($order_item->lead_type_id);
            $i++;
        }
        $this->data['package'] = $this->admin_model->get_package_by_id($this->data['order']->package_id);
        $this->data['vendor'] = $this->user_model->get_vendor_details_by_vendor_id($this->data['order']->vendor_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/view_order', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function change_status($order_id) {
        $this->data['order'] = $this->orders_model->get_order_by_order_id($order_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/change_order_status', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_status($id, $order_id) {
        $data = $this->input->post(NULL, TRUE);
        $this->orders_model->update_status($id, $data);
        unset($data['payment_status']);
        $this->orders_model->update_order_items_status($order_id, $data);
        $this->session->set_flashdata('msg', 'Order Updated Successfully!');
        redirect('admin/orders');
    }

    public function leads() {
        $this->data['leads'] = $this->admin_model->get_leads();
        $i = 0;
        foreach ($this->data['leads'] as $lead) {
            $this->data['leads'][$i]->vendor_name = $this->user_model->get_vendor_details_by_vendor_id($lead->vendor_id)->username;
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/leads', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_vendor() {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_vendor', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_vendor() {


        $data['created_at'] = time();
        $data['plink'] = $this->clean($this->input->post('vendor_buisiness_name', NULL));
        if ($_FILES['logo']['name'] != '') {
            $data['logo'] = $this->upload_file('logo');
        } else {
            $data['logo'] = '';
        }
        $this->insert_data('vendors', $data);
        $this->session->set_flashdata('msg', 'Vendor Added Successfully');
        redirect('admin/vendors');
    }

    public function update_vendor() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        $data['plink'] = $this->clean($this->input->post('vendor_buisiness_name', NULL));
        if ($_FILES['logo']['name'] != '') {
            $data['logo'] = $this->upload_file('logo');
        }
        $this->vendor_model->update_vendor($data, $id);
        $this->session->set_flashdata('msg', 'Vendor Updated Successfully');
        redirect('admin/vendors');
    }

    public function reports() {
        $this->data['orders'] = $this->orders_model->get_filtered_reports();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/reports', $this->data);
        $this->load->view('admin/includes/footer');
    }

}
