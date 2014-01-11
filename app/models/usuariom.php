<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuariom extends CI_Model {

	/**
	 * Usuario - Model.
	 * @autor : Juan E. Huamani Mendoza
	 * @website : http://www.escodigo.com
	 */
	public function index()
	{
		return null;
	}

	/*
	* Return : Datos de un Usuario
	*/
	public function getId($user=1)
	{
		$query = $this->db->get_where('usuario', array('uid' => $user));

		$user = new User();
		$user->setUid(0);
		if ($query->num_rows() > 0)
		{
			$row = $query->row();

			$user->setUid($row->uid);
			$user->setNombre($row->nombre);
			$user->setDireccion($row->direccion);
			$user->setEmail($row->email);
			$user->setTelefono($row->telefono);
			$user->setCelular($row->celular);
		} 
		return $user;
	}
	/*
	* Return : Datos de un Usuario
	*/
	public function get($user=1)
	{
		$query = $this->db->get_where('usuario', array('uid' => $user));

		$user = new User();
		$user->setUid(0);
		if ($query->num_rows() > 0)
		{
			$row = $query->row();

			$user->setUid($row->uid);
			$user->setNombre($row->nombre);
			$user->setDireccion($row->direccion);
			$user->setEmail($row->email);
			$user->setTelefono($row->telefono);
			$user->setCelular($row->celular);
		} 
		return $user;
	}
	/*
	* Return : Datos de un Usuario
	*/
	public function getEmail($email="")
	{
		$query = $this->db->get_where('usuario', array('email' => $email));

		$user = new User();
		$user->setUid(0);
		if ($query->num_rows() > 0)
		{
			$row = $query->row();

			$user->setUid($row->uid);
			$user->setNombre($row->nombre);
			$user->setDireccion($row->direccion);
			$user->setEmail($row->email);
			$user->setTelefono($row->telefono);
			$user->setCelular($row->celular);
		} 
		return $user;
	}
	/**
	* Insertar el usuario a la base de datos
	*/
	public function set(User $usuario)
	{
		if($this->existe($usuario->getEmail()))
		{
	        $this->db->insert('usuario',array(
	            'email'=>$usuario->getEmail(),
	            'password'=>$usuario->getPassword(),
	            'nombre'=>$usuario->getNombre(),
	            'direccion'=>$usuario->getDireccion(),
	            'telefono'=>$usuario->getTelefono(),
	            'celular'=>$usuario->getCelular(),
	            'privilegio'=>$usuario->getPrivilegio(),
	            'estado'=>$usuario->getEstado()
	            ));
	        return TRUE;
		}
		else 
		{
			return FALSE;
		}
	}
	/*
	* Validar E-mail
	*/
	public function existe($email)
	{
		$sql = "SELECT * FROM usuario WHERE email = ? AND estado = 1 LIMIT 1"; 
		$query = $this->db->query($sql, array($email));
		//print_r($sql->result());
		if($query->num_rows() > 0)
		{
			return FALSE;
		}
		return TRUE;
	}
}

/* End of file usuariom.php */
/* Location: ./app/models/usuariom.php */