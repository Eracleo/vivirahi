<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Distritoc extends CI_Controller {

	/**
	 * Distrito - Controller.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('distritom');
	}
	public function index()
	{
		print "Distrito";
	}
	/**
	* Formulario retorna Lista de distritos
	*/
	function getToSelect(){
		$codprov = $this->input->get('id');
		print_r($this->distritom->getForJson($codprov));
	}
}

/* End of file distritoc.php */
/* Location: ./app/controllers/distritoc.php */