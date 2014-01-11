<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuarioc extends CI_Controller {

	/**
	 * - Controller.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */

	public function __construct(){
		parent::__construct();
		$this->load->model('usuariom');
	}
	public function index()
	{
		$data['mensaje'] = "Registar un Nuevo Usuario";
		$this->load->view('html/head');
		$this->load->view('form/login');
		$this->load->view('html/end');
	}
	/*
	* Alamacenar usuario en una base de datos
	*/
	public function set()
	{
		//Recoger los datos
		$nombre = $this->input->post('nombre',TRUE);
		$email = $this->input->post('email',TRUE);
		$password = $this->input->post('password',TRUE);;
		$direccion = $this->input->post('direccion',TRUE);;
		$telefono = $this->input->post('telefono',TRUE);;
		$celular =$this->input->post('celular',TRUE);;
		$privilegio = 1;
		$estado = 1;
		//Almacenar el usuario en la base de datos
		$user = new User();
                $user->setNombre($nombre);
                $user->setEmail($email);
                $user->setPassword($password);
                $user->setDireccion($direccion);
                $user->setTelefono($telefono);
                $user->setCelular($celular);
                $user->setPrivilegio($privilegio);
                $user->setEstado($estado);
                
		if($this->usuariom->set($user)){
			print "Usuario agregado Correctamente";
		} else 
		{
			print "Error. Email ya Existe";
		}
	}
	/*
	* Crear una Cuenta
	*/
	public function registrar()
	{
		$data['mensaje'] = "Registar un Nuevo Usuario";
		$this->load->view('html/head');
		$this->load->view('form/registrar');
		$this->load->view('html/end');
	}
	/*
	* Solicitar una nueva contraseña
	*/
	public function repassword()
	{
		$data['mensaje'] = "Registar un Nuevo Usuario";
		$this->load->view('html/head');
		$this->load->view('errors/working',$data);
		$this->load->view('html/end');
	}
	/**
	* Perfil de usuario
	*/
	public function perfil($url=1)
	{
		$data['usuario'] = $this->usuariom->get($url);
		$this->load->view('html/head');
		$this->load->view('perfil',$data);
		$this->load->view('html/end');	
	}
}

/* End of file usuarioc.php */
/* Location: ./app/controllers/usuarioc.php */