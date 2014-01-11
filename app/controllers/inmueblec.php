<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inmueblec extends CI_Controller {

	/**
	 * CInmueble
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('provinciam');
		$this->load->model('distritom');
		$this->load->model('tipo_inmueblem');
		$this->load->model('tipo_transaccionm');
		$this->load->model('serviciom');
		$this->load->model('nodem');
		$this->load->model('inmueblem');
		$this->load->model('usuariom');
		$this->load->library('user');
	}
	public function index()
	{
		$this->load->view('html/head');
		$this->load->view('errors/working');
		$this->load->view('html/end');
	}
	/**
	* Mostar el formulario para la creacion de un anuncio de Inmueble
	*/
	public function form()
	{
		$node = "null";

		$data['tipo_transaccion'] = $this->tipo_transaccionm->getToSelect();
		$data['tipo_inmueble'] = $this->tipo_inmueblem->getToSelect();

		$data['provincia'] = $this->provinciam->getToSelect();
		$data['servicio'] = $this->serviciom->getToSelect();

		$this->load->view('html/head');
		$this->load->view('form/inmueble',$data);
		$this->load->view('html/end');
	}
	/*
	* Insertar en la base de datos un nuevo anuncio de un inmueble
	*/
	public function set()
	{
		/*
		* Recoger los valores
		*/
		$titulo  = $this->input->post('nombre',TRUE);
		$keywords = "Palabras Claves";
		$descripcion = $this->input->post('descripcion',TRUE);
		$contenido = $descripcion;
		$url = url_title($titulo, 'dash', TRUE);

		$usuario = 1;


		$direccion = $this->input->post('direccion',TRUE);
		$area_construido = $this->input->post('area',TRUE);
		$area_total = $this->input->post('area',TRUE);
		$tipo_inmueble = $this->input->post('transaccion',TRUE);
		$latitud = $this->input->post('latitud',TRUE);
		$longitud = $this->input->post('altitud',TRUE);
		$precio = $this->input->post('precio',TRUE);
		$servicios = "";
		/*$serv = $this->input->post('servicios');
		foreach ($serv as $name) {
			$servicios .= $name.',';
		}*/
		$material = $this->input->post('material',TRUE);
		$distrito = "Cusco";
		$tipo = $this->input->post('inmueble',TRUE);
		$transaccion = $this->input->post('transaccion',TRUE);
		$antiguedad = $this->input->post('antiguedad',TRUE);
		//Crear una instancia de la clase Usuario
		$user = new User();
		//Insertar a la base de datos el nuevo Usuario
		
		//Crear un objeto nodo		
		$inmueble = new Inmueble();
	        $inmueble->setTitulo($titulo);
	        $inmueble->setKeywords($keywords);
	        $inmueble->setDescripcion($descripcion);
	        $inmueble->setContenido($contenido);
	        $inmueble->setUrl($url);
	        $inmueble->setUsuario($usuario);

            $inmueble->setDireccion($direccion);
            $inmueble->setArea_construido($area_construido);
            $inmueble->setArea_total($area_total);
            $inmueble->setTipo_inmueble($tipo_inmueble);
            $inmueble->setLatitud($latitud);
            $inmueble->setLongitud($longitud);
            $inmueble->setPrecio($precio);
            $inmueble->setServicios($servicios);
            $inmueble->setMaterial($material);
            $inmueble->setDistrito($distrito);
            $inmueble->setTransaccion($transaccion);
		//Insertar un Inmueble
		$this->inmueblem->insertar($inmueble);
		print_r($inmueble);
		print "<p>Se agrego su inmueble <a href='".base_url()."'>Inicio</a></p>";
		
	}
	/*
	* Mostrar un inmueble
	*/
	public function show($url=1)
	{
		// Elegir el nodo
		$node = $this->nodem->get($url);
		
		$head['metatag']['titulo'] = $node['titulo']." - VivirAhi.com";
		$head['metatag']['keywords'] = $node['keywords']."VivirAhi.com";
		$head['metatag']['description'] = $node['description']."Descripcion de la pagina";

		//print_r($node);
		// Recoger el resultado de la base de datos
		$inmueble['node'] = $this->inmueblem->get($url);
		//print_r($inmueble['node']);
		// Configurar el contenido del inmueble
		$inmueble['node']['titulo'] = $node['titulo'];
		//$inmueble['node']['direccion'] = 
		$inmueble['node']['contenido'] = $node['contenido'];
		// Ubicacion
		// Distrito
		$distrito = $this->distritom->get(/*$inmueble['node']['distrito']*/50);
		//print_r($distrito);
		$inmueble['node']['distrito'] = $distrito['nombre'];
		$provincia = $this->provinciam->get($distrito['provincia']);
		//print_r($provincia);
		$inmueble['node']['provincia'] = $provincia['nombre'];
		//$departamento = $this->departamento->get($provincia['departamento']);
		$inmueble['node']['departamento'] = "Cusco";
		$inmueble['node']['tipo_inmueble'] = $this->tipo_inmueblem->get($inmueble['node']['tipo_inmueble'])['nombre'];
		$inmueble['node']['tipo_transaccion'] = $this->tipo_transaccionm->get($inmueble['node']['tipo_transaccion'])['nombre'];

		// Configurar Usuario
		$userId = $node['usuario'];

		$inmueble['usuario'] = $this->usuariom->getId(1);

		// Mostrar el resultado en una plantilla
		$this->load->view('html/head');
		$this->load->view('inmueble',$inmueble);
		$this->load->view('html/end');

	}
}

/* End of file cInmueble.php */
/* Location: ./app/controllers/cInmueble.php */