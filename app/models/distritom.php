<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Distritom extends CI_Model {

	/**
	 * Distrito Model.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/*
	* Retorna lista de Distritos
	* para ser usado en un SELECT
	*/
	public function getToSelect($codigoProvincia  = 1)
	{
		$query = "SELECT did,nombre FROM distrito where provincia = ".$codigoprovincia;
		$sql = $this->db->query($query);

		//return $sql->result_array();
		foreach ($sql->result() as $reg) {
			$data[$reg->did]=$reg->nombre;
		}
		return $data;
	}
	/**
	* Devolver la lista de los distritos
	*/
	function getForJson($provincia=1)
	{	
		//$query = "SELECT did,nombre FROM distrito where provincia = ".$provincia;
		$sql = $this->db->get_where('distrito', array('provincia' => $provincia));

		//return $sql->result_array();
		foreach ($sql->result_array() as $reg) {
			$data[$reg['did']]=$reg['nombre'];
		}
		echo json_encode($data);
	}
	/*
	* Return : Nombre del distrito y el id de la provincia al que pertenece
	*/
	public function get($distrito)
	{
		$query = $this->db->get_where('distrito', array('did' => $distrito));
		return $query->row_array();
	}
}

/* End of file mProvincia.php */
/* Location: ./app/models/mProvincia.php */