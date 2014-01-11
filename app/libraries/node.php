<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * Node.
 * @autor : Juan E. Huamani Mendoza
 * @website : http://www.escodigo.com
 */
class Node {
	/*
	* Atributos
	*/
	private $nId;
	private $titulo;
	private $keywords;
	private $descripcion;
	private $contenido;
	private $url;
	private $usuario;
    function __construct() 
    {
        $this->nId = 0;
        $this->titulo = "titulo";
        $this->keywords = "keywords";
        $this->descripcion = "descripcion";
        $this->contenido = "contenido";
        $this->url = "url";
        $this->usuario = "usuario";
    }

        /*
         * Propiedades
         */
        public function getNId() {
            return $this->nId;
        }

        public function getTitulo() {
            return $this->titulo;
        }

        public function getKeywords() {
            return $this->keywords;
        }

        public function getDescripcion() {
            return $this->descripcion;
        }

        public function getContenido() {
            return $this->contenido;
        }

        public function getUrl() {
            return $this->url;
        }

        public function getUsuario() {
            return $this->usuario;
        }

        public function setUid($nId) {
            $this->uId = $nId;
        }

        public function setTitulo($titulo) {
            $this->titulo = $titulo;
        }

        public function setKeywords($keywords) {
            $this->keywords = $keywords;
        }

        public function setDescripcion($descripcion) {
            $this->descripcion = $descripcion;
        }

        public function setContenido($contenido) {
            $this->contenido = $contenido;
        }

        public function setUrl($url) {
            $this->url = $url;
        }

        public function setUsuario($usuario) {
            $this->usuario = $usuario;
        }



}

/* End of file node.php */