<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Serviciom extends CI_Model {

	/**
	 * Servicio - Model
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/**
	* Retorna lista de Servicios
	* Listos para ser utilizados en un SELECT
	*/
	public function getToSelect()
	{
		$sql = $this->db->query("SELECT sid,nombre,css FROM servicio");
		//return $sql->result_array();
		$i = 0;
		foreach ($sql->result() as $reg) {
			$data[$i]['name']="servicios[]";
			$data[$i]['id']="servicios";
			$data[$i]['value']=$reg->sid;
			$data[$i]['etiqueta']=$reg->nombre;
			$i++;
		}
		return $data;
	}
}

/* End of file mServicio.php */
/* Location: ./app/models/mServicio.php */