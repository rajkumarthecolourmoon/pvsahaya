<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cms extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        $this->load->model("cms_model");
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

    private function upload_file($file_name, $path = NULL) {

        $upload_path1 = "uploads/" . $path;
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
        $this->data['vendors'] = $this->vendor_model->get_vendors();
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/vendors', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function slider() {
        $this->data['sliders'] = $this->cms_model->get_slider();        
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/slider', $this->data);
        $this->load->view('admin/includes/footer');
    }
    public function administrative_bodies(){
       $this->data['administratives'] = $this->cms_model->get_administrative_bodies();
       foreach ($this->data['administratives'] as  $value) {
           $value->state_name = $this->cms_model->get_state_id($value->state_id)->name;
           $value->country_name = $this->cms_model->get_countries($value->country_id)->name;

       }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/administrative_bodies', $this->data);
        $this->load->view('admin/includes/footer'); 
    }
     public function advisory_council(){
       $this->data['advisory'] = $this->cms_model->get_advisory_council();
       foreach ($this->data['advisory'] as  $value) {
           $value->state_name = $this->cms_model->get_state_id($value->state_id)->name;
           $value->country_name = $this->cms_model->get_countries($value->country_id)->name;

       }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/advisory_council', $this->data);
        $this->load->view('admin/includes/footer'); 
    }

    public function honorable_council(){
       $this->data['honorable'] = $this->cms_model->get_honorable_council();
       foreach ($this->data['honorable'] as  $value) {
           $value->state_name = $this->cms_model->get_state_id($value->state_id)->name;
           $value->country_name = $this->cms_model->get_countries($value->country_id)->name;

       }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/honorable_council', $this->data);
        $this->load->view('admin/includes/footer'); 
    }

    public function vedio_gallery() {
        $this->data['vedios'] = $this->cms_model->get_vedios();        
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/vedio_gallery', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function our_news_events() {
        $this->data['news_events'] = $this->cms_model->get_our_news_events();
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/our_news_events', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function membership_title() {
        $this->data['title'] = $this->cms_model->get_membership_title();
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/membership_title', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function committee() {
        $this->data['committees'] = $this->cms_model->get_committee();
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/committee', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function addresses() {
        $this->data['address'] = $this->cms_model->get_address();        
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/addresses', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function benefits() {
        $this->data['benefits'] = $this->cms_model->get_benefits();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/benefits', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function services() {
        $this->data['services'] = $this->cms_model->get_services();
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/services', $this->data);
        $this->load->view('admin/includes/footer');
    }
    public function category() {
      
        $this->load->view('admin/includes/header');
        $this->load->view('admin/categories_add');
        $this->load->view('admin/includes/footer');
    }
    public function add_services() {
             $this->data['categories'] = $this->cms_model->get_category();
             $this->load->view('admin/includes/header',$this->data);
             $this->load->view('admin/add_services', $this->data);
             $this->load->view('admin/includes/footer');
    }


    public function achievements() {
        $this->data['achievements'] = $this->cms_model->get_achievements();        
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/achievements', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function activities() {
        $this->data['activities'] = $this->cms_model->get_all('activities');
        $this->load->view('admin/includes/header');
        $this->load->view('admin/activities', $this->data);
        $this->load->view('admin/includes/footer');
    }
    public function overview() {
        $this->data['overview'] = $this->cms_model->get_overview();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/overview', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function why_steam_wash() {
        $this->data['row'] = $this->cms_model->get_why_steam_wash();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/why_steam_wash', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function aboutswwecha() {
        $this->data['swwecha'] = $this->cms_model->get_aboutswwecha();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/aboutswwecha', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function vision() {
        $this->data['vision'] = $this->cms_model->get_vision();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/vision', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function welcome() {
        $this->data['welcome'] = $this->cms_model->welcome();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/welcome', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function advertise() {
        $this->data['advertises'] = $this->cms_model->get_advertise();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/advertise', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function testimonials() {
        $this->data['testimonials'] = $this->cms_model->get_testimonials();         
        $this->load->view('admin/includes/header');
        $this->load->view('admin/testimonials', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function our_team() {
        $this->data['team'] = $this->cms_model->get_our_team();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/our_team', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function why_we_are() {
        $this->data['rows'] = $this->cms_model->get_why_we_are();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/why_we_are', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function photo_albums() {
        $this->data['album_title'] = $this->cms_model->get_photo_albums();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/photo_albums', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function varieties() {
        $this->data['rows'] = $this->cms_model->get_all('varieties');
        $this->load->view('admin/includes/header');
        $this->load->view('admin/varieties', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function media() {
        $this->data['rows'] = $this->cms_model->get_all('media');
        $this->load->view('admin/includes/header');
        $this->load->view('admin/media', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function videos() {
        $this->data['rows'] = $this->cms_model->get_all('videos');
        $this->load->view('admin/includes/header');
        $this->load->view('admin/videos', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function links() {
        $this->data['rows'] = $this->cms_model->get_all('links');
        $this->load->view('admin/includes/header');
        $this->load->view('admin/links', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function palbum($palbum_id) {
        $this->data['rows'] = $this->cms_model->get_photos_album_id($palbum_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/photos', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function sub_varieties($plink) {
        $this->data['rows'] = $this->cms_model->get_sub_varieties_by_plink($plink);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/sub_varieties', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function cms_pages() {
        $this->data['cms_pages'] = $this->cms_model->get_cms_pages();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/cms_pages', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function faqs() {
        $this->data['faqs'] = $this->cms_model->get_faqs();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/faqs', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function main_banners() {
        $this->data['rows'] = $this->cms_model->get_main_banners();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/main_banners', $this->data);
        $this->load->view('admin/includes/footer');
    }
    
    public function add_slider() {
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_slider', $this->data);
        $this->load->view('admin/includes/footer');
    }
    public function add_administrative() {
        $id = ($this->uri->segment(4)) ? $this->uri->segment(4) : '';
        if($id  !=''){
            $this->data['administratives'] = $this->cms_model->get_administrative_bodies($id);
            $this->data['states'] = $this->cms_model->get_states($this->data['administratives']->country_id);
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->data['countries'] = $this->cms_model->get_countries();        
        $this->load->view('admin/add_administrative', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_advisory() {
        $id = ($this->uri->segment(4)) ? $this->uri->segment(4) : '';
        if($id  !=''){
            $this->data['advisory'] = $this->cms_model->get_advisory_council($id);
            $this->data['states'] = $this->cms_model->get_states($this->data['advisory']->country_id);
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->data['countries'] = $this->cms_model->get_countries();        
        $this->load->view('admin/add_advisory', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_honorable_council() {
        $id = ($this->uri->segment(4)) ? $this->uri->segment(4) : '';
        if($id  !=''){
            $this->data['honorable'] = $this->cms_model->get_honorable_council($id);
            $this->data['states'] = $this->cms_model->get_states($this->data['honorable']->country_id);
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->data['countries'] = $this->cms_model->get_countries();        
        $this->load->view('admin/add_honorable', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_news_events($id ='') {
        if($id  !=''){
            $this->data['news_events'] = $this->cms_model->get_our_news_events($id);            
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_news_events', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_vedio() {
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_vedio', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_committee($id ='') {
        if($id  !=''){
            $this->data['committee'] = $this->cms_model->get_committee($id);            
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_committee', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_achievement($id ='') {
        if($id  !=''){
            $this->data['achievements'] = $this->cms_model->get_achievements($id);            
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_achievement', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_address($id ='') {
        if($id  !=''){
            $this->data['addresses'] = $this->cms_model->get_address($id);            
        }
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add_address', $this->data);
        $this->load->view('admin/includes/footer');
    }


    public function add_benefit() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_benefit', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_activity() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_activity', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_advertise() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_advertise', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_testimonial() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_testimonial', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_our_team() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_our_team', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_donors() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_donors', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_photo_album() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_photo_album', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_variety() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_variety', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_media() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_media', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_video() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_video', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_link() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_link', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_photos() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_photos', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_sub_variety() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_sub_variety', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_faq() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_faq', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_main_banners() {
        $this->data['categories'] = $this->admin_model->get_categories();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_main_banners', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_main_banners($id) {
        $this->data['row'] = $this->cms_model->get_main_banners_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_main_banners', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_advertise($id) {
        $this->data['advertise'] = $this->cms_model->get_advertise_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_advertise', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_testimonial($id) {
        $this->data['testimonial'] = $this->cms_model->get_testimonial_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_testimonial', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_cms_page($id) {
        $this->data['cms'] = $this->cms_model->get_cms_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_cms_page', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_slider() {
        $data = $this->input->post(NULL);
        $data['slider'] = $this->upload_file('slider', 'slider');
        $data['created_at'] = time();
        $this->cms_model->insert_slider($data);
        $this->session->set_flashdata('msg', 'Slider Added Successfully!');
        redirect('admin/cms/slider');
    }
    public function serives_add() {
         if (!empty($_FILES['image']['name'])) {
        $config['upload_path'] = 'uploads/services/';
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $config['file_name'] = $_FILES['image']['name'];
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if ($this->upload->do_upload('image')) {
        $uploadData = $this->upload->data();
        $picture = $uploadData['file_name'];
        } else {
           $picture = '';
        }
       }else {
           $picture = '';
        }
        $data = array(
            'services_categories_id' => $this->input->post('services'),
            'image' => $picture,
            'title' => $this->input->post('title'),
            'description' => $this->input->post('description'),
        );
        $this->cms_model->inserts_servicess($data);
        $this->session->set_flashdata('msg', 'Serives Added Successfully!');
        redirect("admin/cms/add_services");
       
    }
    public function categories_add() {
        if (!empty($_FILES['image']['name'])) {
        $config['upload_path'] = 'uploads/services/';
        $config['allowed_types'] = 'jpg|jpeg|png|gif';
        $config['file_name'] = $_FILES['image']['name'];
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if ($this->upload->do_upload('image')) {
        $uploadData = $this->upload->data();
        $picture = $uploadData['file_name'];
        }else{
          $picture = '';
        }
        }else{
          $picture = '';
        }
        $data = array(
            'title' => $this->input->post('title'),
            'image' => $picture,
            'description' => $this->input->post('description'),
            'category_name' => $this->input->post('category'),
            'p_link' => strtolower(preg_replace('/[^a-zA-Z0-9\.]/', "-",$this->input->post('category'))),
          
        );
        $this->cms_model->inserts_category($data);
          $this->session->set_flashdata('msg', 'Categories  Added Successfully!');
        redirect('admin/cms/category');
    }
    public function insert_administrative($id = ''){
        $data['name'] = $this->input->post('name');
        $data['designation'] = $this->input->post('designation');
        $data['country_id'] = $this->input->post('country');
        $data['state_id'] = $this->input->post('state');
        $data['created_on'] = time();         
        $file = $_FILES['administrative']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('administrative', 'administrative');
        }
        if($id !=''){
            $this->cms_model->update_administrative($data ,$id);
            $this->session->set_flashdata('msg', 'Administrator Updated Successfully!');
        }else{
        $this->cms_model->insert_administrative($data);
        $this->session->set_flashdata('msg', 'Administrator Added Successfully!');
        }
        redirect('admin/cms/administrative_bodies');

    }

     public function insert_advisory_council($id = ''){
        $data['name'] = $this->input->post('name');
        $data['designation'] = $this->input->post('designation');
        $data['country_id'] = $this->input->post('country');
        $data['state_id'] = $this->input->post('state');
        $data['created_on'] = time();         
        $file = $_FILES['advisory']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('advisory', 'advisory');
        }
        if($id !=''){
            $this->cms_model->update_advisory_council($data ,$id);
            $this->session->set_flashdata('msg', 'Advisory Updated Successfully!');
        }else{
        $this->cms_model->insert_advisory_council($data);
        $this->session->set_flashdata('msg', 'Advisory Added Successfully!');
        }
        redirect('admin/cms/advisory_council');

    }

    public function insert_honorable_council($id = ''){
        $data['name'] = $this->input->post('name');
        $data['designation'] = $this->input->post('designation');
        $data['country_id'] = $this->input->post('country');
        $data['state_id'] = $this->input->post('state');
        $data['created_on'] = time();         
        $file = $_FILES['honorable']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('honorable', 'honorable');
        }
        if($id !=''){
            $this->cms_model->update_honorable_council($data ,$id);
            $this->session->set_flashdata('msg', 'Honorable Council Updated Successfully!');
        }else{
        $this->cms_model->insert_honorable_council($data);
        $this->session->set_flashdata('msg', 'Honorable Council Added Successfully!');
        }
        redirect('admin/cms/honorable_council');

    }

    public function insert_news_events($id ='') {
        $data['title'] = ($this->input->post('title')) ? $this->input->post('title') :'' ;
        $data['description'] = ($this->input->post('description')) ? $this->input->post('description') :'' ;
        $data['p_link'] = $this->clean($data['title']);
        if($_FILES['image']['name'] !=''){
            $data['image'] = $this->upload_file('image', 'news_events');
        }       
        $data['created_on'] = time();
        $this->cms_model->insert_news_events($data,$id);
        if($id !=''){
            $this->session->set_flashdata('msg', 'News & Events Updated Successfully!');
        }else{        
        $this->session->set_flashdata('msg', 'News & Events Added Successfully!');
        }
        redirect('admin/cms/our_news_events');
    }

    public function insert_vedio() {
         if (!empty($_FILES['image']['name'])) {
                $config['upload_path'] = 'uploads/vedios/';
                $config['allowed_types'] = 'jpg|jpeg|png|gif';
                $config['file_name'] = $_FILES['image']['name'];
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                if ($this->upload->do_upload('image')) {
                    $uploadData = $this->upload->data();
                    $picture = $uploadData['file_name'];
                } else {
                    $picture = '';
                }
            } else {
                $picture = '';
            }
        $data['link'] = ($this->input->post('link')) ? $this->input->post('link') :'' ;
        $data['image'] = $picture ;    
        //print_r($data['image']);die;
        $this->cms_model->insert_vedio($data);
        $this->session->set_flashdata('msg', 'Video Added Successfully!');
        redirect('admin/cms/vedio_gallery');
    }

    public function insert_committee($id ='') {
        $data['name'] = $this->input->post('name');
        $data['designation'] = $this->input->post('designation');
        $data['facebook'] = $this->input->post('facebook');
        $data['mail'] = $this->input->post('mail');                
        $file = $_FILES['image']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('image', 'committee');
        }       

        $this->cms_model->insert_committee($data,$id);
        if($id !=''){
        $this->session->set_flashdata('msg', 'Committee Updated Successfully!');   
        }
        $this->session->set_flashdata('msg', 'Committee Added Successfully!');
        redirect('admin/cms/committee');
    }

     public function insert_achievements($id ='') {
        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');                       
        $file = $_FILES['image']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('image', 'achievements');
        }       

        $this->cms_model->insert_achievements($data,$id);
        if($id !=''){
        $this->session->set_flashdata('msg', 'Achievement Updated Successfully!');   
        }
        $this->session->set_flashdata('msg', 'Achievement Added Successfully!');
        redirect('admin/cms/achievements');
    }

    public function insert_address($id ='') {
        $data['title'] = ($this->input->post('title')) ? ($this->input->post('title')) :'' ;
        $data['mobile'] = ($this->input->post('mobile')) ? ($this->input->post('mobile')) :'' ;
        $data['email'] = ($this->input->post('email')) ? ($this->input->post('email')) :'' ;
        $data['address'] = ($this->input->post('address')) ? ($this->input->post('address')) :'' ;
        $data['map_link'] = ($this->input->post('map_link')) ? ($this->input->post('map_link')) :'' ;       
        $file = $_FILES['image']['name'];
        if($file != ''){       
        $data['image'] = $this->upload_file('image', 'address');
        }         
        $this->cms_model->insert_address($data,$id);
        if($id !=''){
        $this->session->set_flashdata('msg', 'Address Updated Successfully!');   
        }
        $this->session->set_flashdata('msg', 'Address Added Successfully!');
        redirect('admin/cms/addresses');
    }

    public function insert_benefit() {
        $data = $this->input->post(NULL);
        $this->cms_model->insert_benefit($data);
        $this->session->set_flashdata('msg', 'Benefit Added Successfully!');
        redirect('admin/cms/benefits');
    }

    public function insert_service() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'services');
        $this->cms_model->insert_service($data);
        $this->session->set_flashdata('msg', 'Service Added Successfully!');
        redirect('admin/cms/services');
    }

    public function insert_activity() {
        $data['title'] = $this->input->post('title');
        $data['created_at'] = time();
        $data['plink'] = $this->clean($data['title']);
        $data['description'] = $this->input->post('description');
        $data['image'] = $this->upload_file('image', 'activities');
        $this->cms_model->insert_data('activities', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/activities');
    }

    public function insert_advertise() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'advertise');
        $data['created_at'] = time();
        $this->cms_model->insert_advertise($data);
        $this->session->set_flashdata('msg', 'Advertise Added Successfully!');
        redirect('admin/cms/advertise');
    }

    public function insert_testimonial() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'testimonials');
        $this->cms_model->insert_testimonial($data);
        $this->session->set_flashdata('msg', 'Testimonial Added Successfully!');
        redirect('admin/cms/testimonials');
    }

    public function insert_our_team() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'our_team');
        $this->cms_model->insert_our_team($data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/our_team');
    }

    public function insert_donors() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'donors');
        $this->cms_model->insert_data('donors', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/donors');
    }

    public function insert_photo_album() {
        $data['title'] = $this->input->post('title') ? $this->input->post('title') :'';        
        $data['p_link'] = $this->clean($data['title']);
        $data['created_on'] = time();
        $this->cms_model->insert_photo_album($data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/photo_albums');
    }

    public function insert_variety() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image', 'varieties');
        $data['plink'] = $this->clean($data['title']);
        $this->cms_model->insert_data('varieties', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/varieties');
    }

    public function insert_media() {
        $data['title'] = $this->input->post('title');
        $data['image'] = $this->upload_file('image', 'media');
        $data['created_on'] = time();
        $this->cms_model->insert_data('media', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/media');
    }

    public function insert_video() {
        $data = $this->input->post(NULL);
        $data['image'] = $this->upload_file('image');
        $this->cms_model->insert_data('videos', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/videos');
    }

    public function insert_link() {
        $data = $this->input->post(NULL);
        $this->cms_model->insert_data('links', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/links');
    }

    public function insert_photos() {
        $pfoder_id = $data['pf_id'] = $this->input->post('pfolder_id') ? $this->input->post('pfolder_id') : '';
        $data['pf_plink'] = $this->cms_model->get_photo_albums($pfoder_id)->p_link;                 
        $data['image'] = $this->upload_file('image', 'gallery');
        $this->cms_model->insert_data('photo_gallery', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/palbum/' . $pfoder_id);
    }

    public function insert_sub_variety() {
        $data = $this->input->post(NULL);
        $variety_plink = $this->input->post('variety_plink');
        $data['image'] = $this->upload_file('image', 'varieties');
        $this->cms_model->insert_data('sub_varieties', $data);
        $this->session->set_flashdata('msg', 'Added Successfully!');
        redirect('admin/cms/sub_varieties/' . $variety_plink);
    }

    public function insert_faq() {
        $data = $this->input->post(NULL);
        $this->cms_model->insert_faq($data);
        $this->session->set_flashdata('msg', 'FAQ Added Successfully!');
        redirect('admin/cms/faqs');
    }

    public function insert_main_banners() {


        $data['created_at'] = time();
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'main_banners');
        } else {
            $data['image'] = '';
        }
        $this->insert_data('main_banners', $data);
        $this->session->set_flashdata('msg', 'Added Successfully');
        redirect('admin/cms/main_banners');
    }

    public function update_slider($id) {

        $data = $this->input->post(NULL, TRUE);
        if ($_FILES['slider']['name'] != '') {
            $data['slider'] = $this->upload_file('slider', 'slider');
        }
        $this->cms_model->update_slider($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/slider');
    }

    public function update_vedio($id) {
        //echo $id;die;

        $data = $this->input->post(NULL, TRUE);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'vedios');
        }
        $this->cms_model->update_vedio($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/vedio_gallery');
    }

    public function update_overview() {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image');
        }
        $this->cms_model->update_overview($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/overview');
    }

    public function update_steam_wash() {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image');
        }
        $this->cms_model->update_steam_wash($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/why_steam_wash');
    }

    public function update_aboutswwecha() {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image','about');
        }
        $this->cms_model->update_aboutswwecha($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/aboutswwecha');
    }

    public function update_vision() {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image','about');
        }
        $this->cms_model->update_vision($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/vision');
    }

    public function update_welcome() {
        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image','welcome');
        }        
        $this->cms_model->update_welcome($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/welcome');
    }

    public function update_membership_title() {
        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');                
        $this->cms_model->update_membership_title($data);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/membership_title');
    }

    public function update_benefit($id) {

        $data = $this->input->post(NULL);
        $this->cms_model->update_benefit($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/benefits');
    }

    public function update_advertise($id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'advertise');
        }
        $this->cms_model->update_advertise($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/advertise');
    }

    public function update_service($id) {
        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'services');
        }     
        $this->cms_model->update_service($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/services');
    }

    public function update_activity($id) {

        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');                
        $data['created_at'] = time();
        $data['plink'] = $this->clean($data['title']);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'activities');
        }        
        $this->cms_model->update_data('activities', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/activities');
    }

    public function update_our_team($id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'our_team');
        }
        $this->cms_model->update_our_team($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/our_team');
    }

    public function update_why_we_are($id) {

        $data['title'] = $this->input->post('title');
        $data['sub_title'] = $this->input->post('sub_title');
        
        $this->cms_model->update_data('why_we_are', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/why_we_are');
    }

    public function update_photo_album($id) {

        $data['title'] = $this->input->post('title') ? $this->input->post('title') :'';
        $data['p_link'] = $this->clean($data['title']);
        $data['created_on'] = time();        
        $this->cms_model->update_photo_album($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/photo_albums');
    }

    public function update_variety($id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'varieties');
        }
        $data['plink'] = $this->clean($data['title']);
        $this->cms_model->update_data('varieties', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/varieties');
    }

    public function update_media($id) {

        $data['title'] = $this->input->post('title');
        $data['created_on'] = time();
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'media');
        }
        $this->cms_model->update_data('media', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/media');
    }

    public function update_video($id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image');
        }
        $this->cms_model->update_data('videos', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/videos');
    }

    public function update_link($id) {

        $data = $this->input->post(NULL);
        $this->cms_model->update_data('links', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/links');
    }

    public function update_photos($pfolder_id, $id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'gallery');
        }
        $this->cms_model->update_data('photo_gallery', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/palbum/' . $pfolder_id);
    }

    public function update_sub_variety($plink, $id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'varieties');
        }
        $this->cms_model->update_data('sub_varieties', $data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/sub_varieties/' . $plink);
    }

    public function update_testimonial($id) {

        $data['title'] = $this->input->post('title');
        $data['description'] = $this->input->post('description');
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'testimonials');
        }
        $this->cms_model->update_testimonial($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/testimonials');
    }

    public function update_status_testimonial($id) {

        $this->cms_model->update_status_testimonial($id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/testimonials');
    }

    public function update_cms_page($id) {

        $data = $this->input->post(NULL);
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image');
        }
        $this->cms_model->update_cms_page($data, $id);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/cms/cms_pages');
    }

    public function update_vendor() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        $data['plink'] = $this->clean($this->input->post('vendor_buisiness_name', NULL));
        if ($_FILES['logo']['name'] != '') {
            $data['logo'] = $this->upload_file('logo', 'category_banners');
        }
        $this->vendor_model->update_vendor($data, $id);
        $this->session->set_flashdata('msg', 'Vendor Updated Successfully');
        redirect('admin/vendors');
    }

    public function edit_slider($id) {
        $this->data['slider'] = $this->cms_model->get_banner_by_id($id);
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/edit_slider', $this->data);
        $this->load->view('admin/includes/footer');
    }

     public function edit_vedio($id) {
        $this->data['vedio'] = $this->cms_model->get_vedio_id($id);
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/edit_vedio', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_benefit($id) {
        $this->data['benefit'] = $this->cms_model->get_benefit_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_benefit', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_service($id) {
        $this->data['service'] = $this->cms_model->get_service_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_service', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_activity($id) {
        $this->data['service'] = $this->cms_model->get_row_by_id('activities', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_activity', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_faq($id) {
        $this->data['faq'] = $this->cms_model->get_faq_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_faq', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_our_team($id) {
        $this->data['team'] = $this->cms_model->get_our_team_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_our_team', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_why_we_are($id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('why_we_are', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_why_we_are', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_photo_album($id) {
        $this->data['photo_album'] = $this->cms_model->get_photo_albums($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_photo_album', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_variety($id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('varieties', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_variety', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_media($id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('media', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_media', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_video($id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('videos', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_video', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_link($id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('links', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_link', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_photos($pfolder_id, $id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('photo_gallery', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_photos', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_sub_variety($plink, $id) {
        $this->data['row'] = $this->cms_model->get_row_by_id('sub_varieties', $id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_sub_variety', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_slider($id) {
        $this->cms_model->delete_slider($id);
        $this->session->set_flashdata('msg', 'Slider Deleted Succesfully!');
        redirect('admin/cms/slider');
    }
    public function delete_administrative($id) {
        $this->cms_model->delete_administrative($id);
        $this->session->set_flashdata('msg', 'Administrative Deleted Succesfully!');
        redirect('admin/cms/administrative_bodies');
    }

    public function delete_advisory($id) {
        $this->cms_model->delete_advisory($id);
        $this->session->set_flashdata('msg', 'Advisory Council Deleted Succesfully!');
        redirect('admin/cms/advisory_council');
    }

     public function delete_honorable_council($id) {
        $this->cms_model->delete_honorable_council($id);
        $this->session->set_flashdata('msg', 'Honorable Council Deleted Succesfully!');
        redirect('admin/cms/honorable_council');
    }

    public function delete_news_events($id) {
        $this->cms_model->delete_news_events($id);
        $this->session->set_flashdata('msg', 'News & Event Deleted Succesfully!');
        redirect('admin/cms/our_news_events');
    }

    public function delete_vedio($id) {
        $this->cms_model->delete_vedio($id);
        $this->session->set_flashdata('msg', 'Vedio Deleted Succesfully!');
        redirect('admin/cms/vedio_gallery');
    }

    public function delete_committee($id) {
        $this->cms_model->delete_committee($id);
        $this->session->set_flashdata('msg', 'Committee Deleted Succesfully!');
        redirect('admin/cms/committee');
    }

    public function delete_achievement($id) {
        $this->cms_model->delete_achievement($id);
        $this->session->set_flashdata('msg', 'Achievement Deleted Succesfully!');
        redirect('admin/cms/achievements');
    }

    public function delete_address($id) {
        $this->cms_model->delete_address($id);
        $this->session->set_flashdata('msg', 'Address Deleted Succesfully!');
        redirect('admin/cms/addresses');
    }

    public function delete_main_banners($id) {
        $this->cms_model->delete_main_banners($id);
        $this->session->set_flashdata('msg', 'Banner Deleted Succesfully!');
        redirect('admin/cms/main_banners');
    }

    public function delete_advertise($id) {
        $this->cms_model->delete_advertise($id);
        $this->session->set_flashdata('msg', 'Advertise Content Deleted Succesfully!');
        redirect('admin/cms/advertise');
    }    

    public function delete_activity($id) {
        $this->cms_model->delete_row('activities', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/activities');
    }

    public function delete_video($id) {
        $this->cms_model->delete_row('videos', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/videos');
    }

    public function delete_photo($gallery_id, $id) {
        $this->cms_model->delete_row('photo_gallery', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/palbum/' . $gallery_id);
    }

    public function delete_sub_variety($plink, $id) {
        $this->cms_model->delete_row('sub_varieties', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/sub_varieties/' . $plink);
    }

    public function delete_our_team($id) {
        $this->cms_model->delete_our_team($id);
        $this->session->set_flashdata('msg', 'Team Member Deleted Succesfully!');
        redirect('admin/cms/our_team');
    }

    public function delete_media($id) {
        $this->cms_model->delete_row('media', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/media');
    }

    public function delete_link($id) {
        $this->cms_model->delete_row('links', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/links');
    }

    public function delete_donors($id) {
        $this->cms_model->delete_row($id);
        $this->session->set_flashdata('msg', 'Team Member Deleted Succesfully!');
        redirect('admin/cms/d');
    }

    public function delete_album($id) {
        $this->cms_model->delete_album($id);
        $this->session->set_flashdata('msg', 'Album Deleted Succesfully!');
        redirect('admin/cms/photo_albums');
    }

    public function delete_variety($id) {
        $this->cms_model->delete_row('varieties', $id);
        $this->session->set_flashdata('msg', 'Deleted Succesfully!');
        redirect('admin/cms/varieties');
    }

    public function delete_testimonial($id) {
        $this->cms_model->delete_testimonial($id);
        $this->session->set_flashdata('msg', 'Testimonial Deleted Succesfully!');
        redirect('admin/cms/testimonials');
    }

    public function site_settings() {
        $this->data['settings'] = $this->admin_model->get_site_settings();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/profile', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function change_password() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/change_password', $this->data);
        $this->load->view('admin/includes/footer');
    }
    

}
