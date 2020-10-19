<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct() {

        //load the parent constructor

        parent::__construct();
        $this->load->model("site_model");
        $this->load->model("cms_model");
        $this->load->model("admin_model");        
        $this->data["site_property"] = $this->site_model->get_site_properties();        
        $this->data["social_links"] = $this->site_model->get_social_media_links();
        $this->data['link'] = $this->admin_model->get_social_media();
        $this->data['categories'] = $this->cms_model->get_categories(); 
        $config['protocol'] = 'smtp';

        $config['charset'] = 'utf-8';

        $config['smtp_host'] = 'localhost';

        $config['smtp_user'] = 'info@swwechafoundation.com';

        $config['smtp_pass'] = 'vizag@123';

        $config['smtp_port'] = 25;

        $config['crlf'] = "\r\n";

        $config['newline'] = "\r\n";

        $config['wordwrap'] = TRUE;

        $config['mailtype'] = 'html';

        $this->email->initialize($config);

        $this->load->library('email');
        
    }
	public function index()
	{   
		$this->data['sliders'] = $this->cms_model->get_slider();
		$this->data['about_pvsahaya'] = $this->cms_model->get_aboutswwecha();
		$this->data['about_members'] = $this->cms_model->get_committee();
		$this->data['services'] = $this->cms_model->get_services();
		//print_r($this->data['services']);exit;
		$this->data['activities'] = $this->cms_model->get_all('activities');
		$this->data['photos'] = $this->cms_model->get_photos_gallery();
		$this->data['testimonials'] = $this->cms_model->get_testimonials();		
		//echo "<pre>",print_r($this->data['photos']);exit;
		$this->data['welcome'] = $this->cms_model->welcome();
		$this->data['why_we_are'] = $this->cms_model->get_why_we_are();
		$this->data['news_events'] = $this->cms_model->get_our_news_events();
		$this->data['services'] = $this->cms_model->get_services();				
		$this->data['categories'] = $this->cms_model->get_categories();   
		$this->load->view('index',$this->data);
		
	}
	public function view($p_link){
		//echo $p_link;die;
        $this->data['services_category'] = $this->cms_model->get_id_by_p_link($p_link); 
        $this->data['view'] = $this->cms_model->get_services_by_id($this->data['services_category']->id);
        //echo "<pre>",print_r($this->data['services_category']);exit;
        $this->load->view('services_view', $this->data);
    }
   
	public function administrative_bodies(){

	    $this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/administrative_bodies"; 
        $config["total_rows"] = $this->cms_model->count_administrative_bodies(); 
        $config["per_page"] = 8; 
        $config["uri_segment"] = 3; 
        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["administrative"] = $this->cms_model->get_administrative_bodies( $id=0,$config["per_page"], $page); 
        //echo $this->db->last_query();exit;
        $this->data["links"] = $this->pagination->create_links();    			
		$this->data['countries'] = $this->cms_model->get_countries();	
        if($_POST['state']!=''){
	    $this->data['states'] = $this->cms_model->get_states($_POST['country']);
        }
		$this->load->view('administrative_bodies',$this->data);
	}

	public function advisory_council(){

		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/advisory_council"; 
        $config["total_rows"] = $this->cms_model->count_advisory_council(); 
        $config["per_page"] = 8; 
        $config["uri_segment"] = 3; 
        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["advisory"] = $this->cms_model->get_advisory_council( $id=0,$config["per_page"], $page);        
        $this->data["links"] = $this->pagination->create_links();    			
		$this->data['countries'] = $this->cms_model->get_countries();
		if($_POST['state']!=''){
	    $this->data['states'] = $this->cms_model->get_states($_POST['country']);
        }
		$this->load->view('advisory_council',$this->data);

	}

	public function honorable_council(){

		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/honorable_council"; 
        $config["total_rows"] = $this->cms_model->count_honorable_council(); 
        $config["per_page"] = 8; 
        $config["uri_segment"] = 3; 
        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["honorable"] = $this->cms_model->get_honorable_council( $id=0,$config["per_page"], $page);        
        $this->data["links"] = $this->pagination->create_links();    			
		$this->data['countries'] = $this->cms_model->get_countries();
		if($_POST['state']!=''){
	    $this->data['states'] = $this->cms_model->get_states($_POST['country']);
        }
		$this->load->view('honorable_council',$this->data);

	}

	public function services(){
		$this->data['services'] = $this->cms_model->get_services();
		$this->load->view('services',$this->data);
	}

	public function about_swwecha(){
		$this->data['about'] = $this->cms_model->get_aboutswwecha();
		$this->load->view('about_swwecha',$this->data);
	}

	public function about_pvsahaya(){
		$this->data['about'] = $this->cms_model->get_aboutswwecha();
		$this->load->view('about_pvsahaya',$this->data);
	}

	public function committee(){
		$this->data['committee'] = $this->cms_model->get_committee();		
		$this->load->view('about_committee',$this->data);
	} 
	public function about_members(){
		$this->data['about_members'] = $this->cms_model->get_committee();		
		$this->load->view('about_members',$this->data);
	} 	

	public function achievements(){
		$this->data['achievements'] = $this->cms_model->get_achievements();
		$this->load->view('achievements',$this->data);
	}

	public function activities(){
		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/activities"; 
        $config["total_rows"] = $this->cms_model->count_activities(); 
        $config["per_page"] = 4; 
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data['activities'] = $this->cms_model->get_activities($config["per_page"], $page);        
        $this->data["links"] = $this->pagination->create_links();	
		$this->load->view('activities',$this->data);
	}

	public function activities_view($plink){
		$this->data['activities'] = $this->cms_model->get_plink_activities($plink);
		$this->load->view('activities_view',$this->data);
	}

	public function photo_album(){
		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/photo_album"; 
        $config["total_rows"] = $this->cms_model->count_photo_albums(); 
        $config["per_page"] = 8; 
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data['photo_albums'] = $this->cms_model->get_photo_albums($id='',$config["per_page"], $page);
        $this->data["links"] = $this->pagination->create_links();					
		$this->load->view('photo_album',$this->data);
	}

	public function testimonials(){
		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/testimonials"; 
        $config["total_rows"] = $this->cms_model->count_testimonials(); 
        $config["per_page"] = 4; 
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data['testimonials'] = $this->cms_model->get_testimonials($config["per_page"], $page);
        $this->data["links"] = $this->pagination->create_links();		 			
		$this->load->view('testimonials',$this->data);
	}

	public function photo_gallery($plink='',$page=''){
		$this->load->library("pagination");
	    $config["base_url"] = base_url() . "photo_gallery/$plink/$page"; 
        $config["total_rows"] = $this->cms_model->count_photos_gallery($plink);         
        $config["per_page"] = 12; 
        $config["uri_segment"] = 3;
		$config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["pfolders"] = $this->cms_model->get_photos_gallery($plink,$config["per_page"], $page);
        //print_r($this->data["pfolders"]);exit;
        //echo $this->db->last_query();exit;
        $this->data["links"] = $this->pagination->create_links();	
        //print_r($data['links']);	
		$this->load->view('photo_gallery',$this->data);
	}	

	public function photo_gallery_view(){
		$this->data['plink'] = $plink = $this->uri->segment(2);
		$this->data['photos'] = $this->cms_model->get_photos_gallery($plink);
		//print_r($data['photos']);exit;		
		$this->load->view('photo_gallery_view',$this->data);
	}

	public function video_gallery(){
	    $this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/video_gallery"; 
        $config["total_rows"] = $this->cms_model->count_video_gallery();         
        $config["per_page"] = 12; 
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["vedios"] = $this->cms_model->get_vedios($config["per_page"], $page);
        $this->data["links"] = $this->pagination->create_links();	
        //print_r($data['vedios']);exit;	
		$this->load->view('video_gallery',$this->data);
	}
	public function media_gallery(){
	    $this->load->library("pagination");
	    $config["base_url"] = base_url() . "home/media_gallery"; 
        $config["total_rows"] = $this->cms_model->count_media_gallery();                
        $config["per_page"] = 4; 
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<div class="pager-outer clearfix mt_30 mb_0"><ul class="pagination mb_0">';
		$config['full_tag_close'] = '</ul></div>';
		$config['prev_link'] = 'Prev';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a></li>';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';

		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';

		$config['first_link'] = '&lt;&lt;';
		$config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config); 
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["medias"] = $this->cms_model->get_media_gallery($config["per_page"], $page);
        $this->data["links"] = $this->pagination->create_links();	
        //print_r($data['vedios']);exit;	
		$this->load->view('media_gallery',$this->data);
	}

	public function contactus(){		
	    	   
		$this->load->view('contact_us',$this->data);
	}

	public function send_mail(){
		$name = $this->input->post('name', TRUE);
        $mobile = $this->input->post('mobile', TRUE);
        //$subject = $this->input->post('subject', TRUE);
        $subject = "enquery email";
        $email = $this->input->post('email', TRUE);
        $message = $this->input->post('message', TRUE);
        $to_mail = $this->data["site_property"]->email;
        $message = "
       Hi,\r\n
       Name : $name \r\n
       Email : $email \r\n
       Subject : $subject \r\n
       Mobile : $mobile \r\n
       Message : $message \r\n
       ";
        
        $this->email->from($email);
        $this->email->to($to_mail);
        $this->email->subject($subject);
        $this->email->message($message);
        $send = $this->email->send();
        if ($send) {
            $this->session->set_flashdata('msg', 'Succesfully sent your request');
            redirect('contactus');
        } else {
            $this->session->set_flashdata('msg', 'Your request cannot sent please try again');
            redirect('contactus');
        }
	}
	public function news_events(){
		$plink = $this->uri->segment(2);
		$this->data['news_events'] = $this->cms_model->get_our_news_events($id='',$plink);
		$this->load->view('news_events',$this->data);
	}
	public function news_events_view(){
		$this->data['news_events_view'] = $this->cms_model->get_our_news_events();
		$this->load->view('news_events_view',$this->data);
	}

	public function get_states(){
        $id = $_POST['id'];//$this->uri->segment(3);
		$states = $this->cms_model->get_states($id);
		   ?> <option>Select State</option> <?php 
		 foreach($states as $state){?>
			<option value="<?= $state->id;?>"><?= $state->name;?></option>
			<?php }
	}


}
