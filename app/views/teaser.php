
<?php 
/*
* Pariables PhP
*/

$tipo_inmueble = array(
	'1' => 'Tipo 1',
	'2' => 'Tipo 2',
	'3' => 'Tipo 3' );

	print '<pre>';
	//print_r($inmueble);
	print '</pre>';
 ?>
<hr />
<h1>&Uacute;ltimos Anuncios Añadidos</h1>
<?php foreach ($inmueble as $item): ?>
	<div class="teaser">
		<div class="content">
			<h1><a href="<?php print base_url(); ?>inmueblec/show/<?php echo $item['nid'] ?>"><?php echo $item['titulo'] ?></a></h1>
			<div class="detalles">
				<?php echo substr($item['contenido'],0,200).'...'; ?>
				<p align="right"><a href="<?php print base_url(); ?>inmueblec/show/<?php echo $item['nid'] ?>">Detalles</a></p>
			</div>
		</div>
	</div>
	<hr />
<?php endforeach ?>
<?php print $paginacion; ?>