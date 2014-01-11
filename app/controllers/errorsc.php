<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Errorsc extends CI_Controller {

	/**
	 * Errores - Controller.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		$this->load->view('html/head');
		print "Error";
		$this->load->view('html/end');
	}
	/**
	* Error 404
	*/
	public function page_404()
	{
		$this->load->view('html/head');
		print "Error 404";
		$this->load->view('html/end');
	}
}

/* End of file cErrors.php */
/* Location: ./app/controllers/cErrors.php */