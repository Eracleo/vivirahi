<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tipo_transaccionm extends CI_Model {

	/**
	 * Tipos de Transacciones - Model
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/**
	* Retorna lista de Tipos de transacciones
	* Listos para ser utilizados en un SELECT
	*/
	public function getToSelect()
	{
		$sql = $this->db->query("SELECT tid, nombre FROM tipo_transaccion");
		//return $sql->result_array();
		foreach ($sql->result() as $reg) {
			$data[$reg->tid]=$reg->nombre;
		}
		return $data;
	}
	/*
	* Return : Nombre del Tipo de Inmueble
	*/
	public function get($idTipoTransaccion)
	{
		$query = $this->db->get_where('tipo_transaccion', array('tid' => $idTipoTransaccion));
		return $query->row_array();
	}
}

/* End of file mTipoTransaccion.php */
/* Location: ./app/models/mTipoTransaccion.php */