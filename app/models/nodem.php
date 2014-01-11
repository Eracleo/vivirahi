<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Nodem extends CI_Model {

	/**
	 * Node - Model.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}
	/**
	* Insertar
	*/
	public function insertar(Node $node)
	{
		$this->db->insert('node',array(
			'titulo'=>$node->getTitulo(),
			'keywords'=>$node->getKeywords(),
			'description'=>$node->getDescripcion(),
			'contenido'=>$node->getContenido(),
			'url'=>$node->getUrl(),
			'usuario'=>$node->getUsuario(),
			'fecha'=>"13000101212"
		));
	}
	/*
	* Actualizar 
	*/
	public function actualizar($node)
	{
		return null;
	}
	/*
	* Retorna un nodo
	*/
	public function get($url)
	{
		if ($url < 1)
		{
			show_404();
		}
		$query = $this->db->get_where('node', array('nid' => $url));
		return $query->row_array();
	}
	/*
	* retorna los metatags
	*/
	public function getMetaTags()
	{
		return null;
	}
	/**
	* Devolver la lista de todos los inmuebles disponibles
	*/
	public function lenght()
	{
		//return $this->db->get('node')->num_rows();
		return $this->db->count_all('node');
	}
	/**
	* Devolver la lista de todos los inmuebles disponibles
	*/
	public function getAll($per_page = 1)
	{	
		$this->db->order_by("nid", "desc");
		$this->db->join('inmueble', 'inmueble.node = node.nid');
		$data = $this->db->get('node', $per_page,$this->uri->segment(3));
		return $data->result_array();
	}
	/**
	* Devolver la lista de todos los inmuebles disponibles
	*/
	public function getAllInmuebles($per_page = 1)
	{	
		$this->db->order_by("nid", "desc");
		$data = $this->db->get('node', $per_page,$this->uri->segment(3));
		return $data->result_array();
	}
	/**
	* Generar un xml
	*/
	public function xml()
	{
		$this->load->dbutil();
		$query = $this->db->query("SELECT titulo FROM node");
		$config = array (
		                  'root'    => 'root',
		                  'element' => 'element', 
		                  'newline' => "\n", 
		                  'tab'    => "\t"
		                );
		echo $this->dbutil->xml_from_result($query, $config);
	}
}
/* End of file cNode.php */
/* Location: ./app/models/cNode.php */