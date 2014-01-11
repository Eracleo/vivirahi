<?php 
$servicios = array(
		'1' =>'Garage',
		'2' => 'Baño',
		'3' => 'Agua',
		'4' => 'Internet',
		'5' => 'Luz',
		'6' => 'Ducha',
		'7' => 'Portero Automatico',
		'8' => 'Cerca de un parque',
		'9' => 'escuela',
		'10' => 'seguridad'
		);
 ?>
<div class="inmueble">
<p class="breakcrumb"><a href="<?php print base_url(); ?>" title="Inicio">Inicio</a> </p>
<?php echo "<h1>".$node['titulo']."</h1>"; ?>
<p><b><?php print $node['direccion']; ?></b></p>
<?php // print "<pre>"; print_r($node); print "</pre>"; ?>
<div class="linea"></div>

	<div class="photos">
		<div class="slide">
		<img src="<?php echo base_url();?>files/large/default.jpg">
		</div>
		<div class="thumb">
		<img src="<?php echo base_url();?>files/thumb/default.jpg"> 
		<div class="more-image"><a href="#">+ añadir</a></div>
		</div>
	</div>
	<div class="caracteristicas">
		<p><b>Principales Caracteristicas</b></p>
		<hr>
		<p><b>Tipo : </b><?php echo $node['tipo_inmueble']; ?></p>
		<p><b>Precio : </b><?php echo $node['precio']; ?></p>
		<p><b>Transacci&oacute;n : </b><?php echo $node['tipo_transaccion']; ?></p>
		<p><b>Antiguedad : </b><?php //echo $node['antiguedad']; ?></p>
		<p><b>Terreno : </b><?php echo $node['area_total']; ?></p>
		<p><b>Area : </b><?php echo $node['area_construido']; ?></p>
		<p><b>Departamento : </b><?php echo $node['departamento']; ?></p>
		<p><b>Provincia : </b><?php echo $node['provincia']; ?></p>
		<p><b>Distrito : </b><?php echo $node['distrito']; ?></p>
		<hr>
		<br>
	</div>
	<div class="linea"> </div>
	<div class="detalles">
				<div class="field">
					<h2>Descripción : </h2>
					<?php echo $node['contenido']; ?>
				</div>
				<!--div class="field">
					<h2>Modelos : </h2>
					<div class="modelo">
						<div class="image">Image</div>
						<div class="descripcion">Descripcion del inmueble</div>
					</div>
				</div-->
				<div class="field">
					<h2>Tiene : </h2>
					<div class="column">
						<?php 
						$idServicios = explode(',', $node['servicio']);
						foreach ($idServicios as $servicio) {
							echo '<div class="tick '.url_title($servicios[$servicio]).'">'.$servicios[$servicio].'</div>';
						}
						 ?>
						 <div class="linea"></div>
					</div>
				</div>
				<!--div class="mapa field ">
					<h2>Mapa : </h2>
					<div id="mapa">
						<?php // echo $map['js']; ?>
						<?php // echo $map['html']; ?>
			        </div>
				</div-->
				
			</div>
</div>
<div class="informacion">
	<?php // print_r($user); ?>
	<h2>Información del Anunciante</h2>
	<p><?php print $usuario->getNombre(); ?></p>
	<p><b>Direcci&oacute;n :</b><br> <?php print $usuario->getDireccion(); ?></p>
	<p><b>E-mail :</b> <?php print $usuario->getEmail(); ?></p>
	<p><b>Telefono(s) :</b> <?php print $usuario->getTelefono(); ?></p>
	<p><b>Mobil(es) :</b> <?php print $usuario->getCelular(); ?></p>
	<input type="submit" value="Mostrar Telefono" class="button telefono">
	<input type="submit" value="Mostrar E-mail" class="button email">
	<input type="submit" value="Contactar" class="button contacto">
	
	<?php //print '<pre>'; print_r($usuario);print '</pre>';  ?>
</div>
