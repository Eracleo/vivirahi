<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Provinciam extends CI_Model {

	/**
	 * Provincia Model.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/*
	* Retorna lista de Provincias 
	* para ser usado en un SELECT
	*/
	public function getToSelect($codigoDep  = 84)
	{
		$query = "SELECT pid,nombre FROM provincia where departamento = ".$codigoDep;
		$sql = $this->db->query($query);

		//return $sql->result_array();
		foreach ($sql->result() as $reg) {
			$data[$reg->pid]=$reg->nombre;
		}
		return $data;
	}
	/*
	* Return : Nombre el nombre de la provincia y el id del departamento
	*/
	public function get($provincia)
	{
		$query = $this->db->get_where('provincia', array('pid' => $provincia));
		return $query->row_array();
	}
}

/* End of file mProvincia.php */
/* Location: ./app/models/mProvincia.php */