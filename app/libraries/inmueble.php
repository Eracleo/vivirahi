<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
/**
 * Inmueble.
 * @autor : Juan E. Huamani Mendoza
 * @website : http://www.escodigo.com
 */
class Inmueble extends Node {
    /*
     * Atributos
     */
    private $direccion;
    private $area_total;
    private $area_construido;
    private $tipo_inmueble;
    private $latitud;
    private $longitud;
    private $precio;
    private $servicios;
    private $material;
    private $distrito;
    private $transaccion;
    
    function __construct() {
        $this->direccion = "Direccion";
        $this->area_total = "area_total";
        $this->area_construido = "area_construido";
        $this->tipo_inmueble = "tipo_inmueble";
        $this->latitud = "latitud";
        $this->longitud = "longitud";
        $this->precio = "precio";
        $this->servicios = "servicios";
        $this->material = "material";
        $this->distrito = "distrito";
        $this->transaccion = "transaccion";
    }

        /*
     * Propiedades
     */
    public function getDireccion() {
        return $this->direccion;
    }

    public function getArea_total() {
        return $this->area_total;
    }

    public function getArea_construido() {
        return $this->area_construido;
    }

    public function getTipo_inmueble() {
        return $this->tipo_inmueble;
    }

    public function getLatitud() {
        return $this->latitud;
    }

    public function getLongitud() {
        return $this->longitud;
    }

    public function getPrecio() {
        return $this->precio;
    }

    public function getServicios() {
        return $this->servicios;
    }

    public function getMaterial() {
        return $this->material;
    }

    public function getDistrito() {
        return $this->distrito;
    }

    public function getTransaccion() {
        return $this->transaccion;
    }

    public function setDireccion($direccion) {
        $this->direccion = $direccion;
    }

    public function setArea_total($area_total) {
        $this->area_total = $area_total;
    }

    public function setArea_construido($area_construido) {
        $this->area_construido = $area_construido;
    }

    public function setTipo_inmueble($tipo_inmueble) {
        $this->tipo_inmueble = $tipo_inmueble;
    }

    public function setLatitud($latitud) {
        $this->latitud = $latitud;
    }

    public function setLongitud($longitud) {
        $this->longitud = $longitud;
    }

    public function setPrecio($precio) {
        $this->precio = $precio;
    }

    public function setServicios($servicios) {
        $this->servicios = $servicios;
    }

    public function setMaterial($material) {
        $this->material = $material;
    }

    public function setDistrito($distrito) {
        $this->distrito = $distrito;
    }

    public function setTransaccion($transaccion) {
        $this->transaccion = $transaccion;
    }

    /*
     * Metodos
     */
    public function crear()
    {
    	print "Creando un nuevo Inmueble";
    }
}

/* End of file Node.php */