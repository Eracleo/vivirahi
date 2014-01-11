<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Searchc extends CI_Controller {

	/**
	 * Search - Controller.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function __construct(){
		parent::__construct();
		/*$this->load->model('provinciam');
		$this->load->model('tipo_inmueblem');
		$this->load->model('tipo_transaccionm');
		$this->load->model('serviciom');*/
		$this->load->model('nodem');
		$this->load->library('pagination');
	}
	public function index()
	{
		$config['base_url'] = base_url().'searchc/index/';
		$config['total_rows'] = $this->nodem->lenght();
		$config['per_page'] = 5;
		$config['num_link'] = 3;
		$config['first_link'] = 'Primero';
		$config['last_link'] =  'Ultimo';
		$config['next_link'] = 'Siguiente';
		$config['prev_link'] =  'Anterior';

		$config['cur_tag_open'] = '<b class="actual">';
		$config['cur_tag_close'] = '</b>';

		$config['full_tag_open'] = '<div id="pagina">';
		$config['full_tag_close'] = '</div>';

		$this->pagination->initialize($config);

		$data['inmueble'] = $this->nodem->getAll($config['per_page']);
		$data['paginacion'] = $this->pagination->create_links();
		
		
		$this->load->view('html/head');
		$this->load->view('teaser',$data);
		$this->load->view('html/end');
	}
}

/* End of file cSearch.php */
/* Location: ./app/controllers/cSearch.php */