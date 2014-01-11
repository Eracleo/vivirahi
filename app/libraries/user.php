<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * User.
 * @autor : Juan E. Huamani Mendoza
 * @website : http://www.escodigo.com
 */
class User
{
	/*
	* Atributos
	*/
	private $uid;
	private $nombre;
	private $direccion;
	private $email;
    private $password;
	private $telefono;
	private $celular;
	private $estado;
	private $privilegio;
        function __construct() {
            $this->uid = 1;
            $this->nombre = "Juan";
            $this->direccion = "";
            $this->email = "juan@escodigo.com";
            $this->telefono = "";
            $this->celular = "";
            $this->estado = 0;
            $this->privilegio = 0;
        }
        public function getPassword() {
            return $this->password;
        }

        public function setPassword($password) {
            if(strlen($password)>30)
            {
                $this->password = $password;
            } 
            else 
            {
                $this->password = md5($password);
            }
            
        }

        public function getUid() {
            return $this->uid;
        }

        public function getNombre() {
            return $this->nombre;
        }

        public function getDireccion() {
            return $this->direccion;
        }

        public function getEmail() {
            return $this->email;
        }

        public function getTelefono() {
            return $this->telefono;
        }

        public function getCelular() {
            return $this->celular;
        }

        public function getEstado() {
            return $this->estado;
        }

        public function getPrivilegio() {
            return $this->privilegio;
        }

        public function setUid($uid) {
            $this->uid = $uid;
        }

        public function setNombre($nombre) {
            $this->nombre = $nombre;
        }

        public function setDireccion($direccion) {
            $this->direccion = $direccion;
        }

        public function setEmail($email) {
            $this->email = $email;
        }

        public function setTelefono($telefono) {
            $this->telefono = $telefono;
        }

        public function setCelular($celular)
        {
            $this->celular = $celular;
        }

        public function setEstado($estado) {
            $this->estado = $estado;
        }

        public function setPrivilegio($privilegio) {
            $this->privilegio = $privilegio;
        }

        
}
/* End of file user.php */