<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Nodec extends CI_Controller {

	/**
	 * CNode - Controller
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('nodem');
	}
	public function index()
	{
		print "<p>Nodo - Plantilla</p>";
	}
	/*
	* Insertar en la base de datos un nuevo node
	*/
	public function set()
	{
		$node = new Node();
		print "Insertando Node";
	}
	/**
	* Mostar el formulario para la creacion de un node
	*/
	public function form()
	{
		print "Formulario para crear nodo";
	}
	public function xml()
	{
		$this->nodem->xml();
	}
}

/* End of file cNode.php */
/* Location: ./app/controllers/cNode.php */