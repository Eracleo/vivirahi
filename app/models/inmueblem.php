<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inmueblem extends CI_Model {

	/**
	 * Inmueble - Model.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/*
	* Insertar en la base de datos
	*/
	public function insertar(Inmueble $inmueble)
	{
		// Insertar la parte nodo yrecuperar id del nodo
		//print_r($inmueble);
            $this->db->insert('inmueble',array(
                'node'=>$inmueble->getNId(),
                'direccion'=>$inmueble->getDireccion(),
                'estado'=>"1",
                'area_total'=>$inmueble->getArea_total(),
                'area_construido'=>$inmueble->getArea_construido(),
                'tipo_inmueble'=>$inmueble->getTipo_inmueble(),
                'precio'=>$inmueble->getPrecio(),
                'servicio'=>$inmueble->getServicios(),
                'mapa'=>$inmueble->getLatitud().$inmueble->getLongitud(),
                'material'=>$inmueble->getMaterial(),
                'distrito'=>$inmueble->getDistrito()
		));
	}
	/*
	* Actualizar
	*/
	public function actualizar()
	{
		return null;
	}
	/*
	* Eliminar
	*/
	public function eliminar()
	{
		return null;
	}
	/**
	* Devolver los datos de un inmueble
	*/
	public function get($url)
	{
		if ($url < 1)
		{
			show_404();
		}
		$query = $this->db->get_where('inmueble', array('node' => $url));
		return $query->row_array();
	}
	public function getResumen($url)
	{
		return null;
	}
	/**
	* Devolver la lista de todos los inmuebles disponibles
	*/
	public function lenght()
	{
		return $this->db->get('inmueble')->num_rows();
	}
	/**
	* Devolver la lista de todos los inmuebles disponibles
	*/
	public function getAll($per_page = 1)
	{
		$data = $this->db->get('inmueble', $per_page,$this->uri->segment(3));
		return $data->result_array();
	}
}

/* End of file inmueblem.php */
/* Location: ./app/models/inmueblem.php */