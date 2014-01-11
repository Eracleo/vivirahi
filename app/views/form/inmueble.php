<script type="text/javascript">
$(document).on('ready',function(){
			loadDistrito();
			$('#provincias').change(loadDistrito);
			//$('#sProv').change(loadDistrito);
		});
</script>
		<h1>Agregar un Nuevo Inmueble</h1>
			<!--Web Form-->
			<div class="webform" id="webform">
				<form name="from" method="post" action="<?php print base_url(); ?>inmueblec/set" class="wform newform info" id="form" enctype="multipart/form-data" >
				<fieldset>
					<div class="field transaccion">
						<label><span class="obligatorio">*</span>Tipo de Transacción : </label>
						<?php echo form_dropdown('transaccion',$tipo_transaccion,null," id='sTransaccion'");?>
					</div>
					<div class="field tipo">
						<label><span class="obligatorio">*</span> Tipo de Inmueble : </label>
						<?php echo form_dropdown('transaccion',$tipo_inmueble,null," id='sTransaccion'");?>					</div>
					<div class="field ">
						<label>Titulo del inmueble : </label>
						<input type="text" name="nombre" size="60" placeholder="ejemplo: Casa en venta en Cusco" class=" " value="" required>
					</div>
					<div class="field ">
						<label><span class="obligatorio">*</span>Deparmento : </label>
						<select name="departamentos" id="departamentos">
						<option value="0">cusco</option>
						</select>						
						<label><span class="obligatorio">*</span>Provincia : </label>
						<?php echo form_dropdown('provincias',$provincia,null," id='provincias'");?>						
						<label><span class="obligatorio">*</span>Distrito : </label>						
						<select name="distritos" id="distritos">
<option value="0">- - Elegir - -</option>
</select>						
					</div>
					<div class="field direccion">
						<label>Dirección: <span class="obligatorio">*</span> </label>
						<input type="text" name="direccion" size="60" placeholder="ejemplo: Av. Argentina 1023 A-2" class=" " required>
					</div>
					<div class="field ">
						<label>Area Total <span class="obligatorio">*</span> : </label>
						<input type="text" name="area" placeholder="ejm 150" class=" " value=""> 
						<label>m2</label>
						<label>Area Construido</label>
						<input type="text" name="area_construido" placeholder="ejm 150" class=" " value=""> 
						<label>m2</label>
						<label>Construcción Con : </label>
						<input type="text" name="material" placeholder="ejm Adobe " class=" " value="">
					</div>
					<div class="field ">
						<label>Antiguedad <span class="obligatorio">*</span> : </label>
						<input type="text" name="antiguedad" placeholder="ejm 2 meses " class=" " value="">
					</div>
					<div class="field caracteristicas">
						<label>Cuenta con : </label>
						<div class="linea"></div>
						<div class="column">
							<?php 
							foreach ($servicio as $item) {
								echo '<div class="item">'.form_checkbox($item).$item['etiqueta']."</div>";
							}
							?>
						</div>

					</div>
					<div class="field ">
						<h3>Ubicación en Mapa</h3>
						<label>Latitud <span class="obligatorio">*</span> : </label>
						<input type="text" name="latitud" placeholder="2.2554 " class=" " value="">
						<label>Altitud <span class="obligatorio">*</span> : </label>
						<input type="text" name="altitud" placeholder="215.212" class=" " value="">						
					</div>
					<div class="field ">
					</div>
					<div class="field descripcion">
						<label>Descripción : <span class="obligatorio">*</span></label>
						<textarea rows="5" cols="80" name="descripcion"></textarea>
					</div>
					<div class="field ">
						<input type="submit" name="inmueble" value="Limpiar Formulario" class="button ">
						<input type="submit" name="inmueble" value="Cancelar" class="button ">
						<input type="submit" name="inmueble" value="Crear Anuncio" class="button ">
					</div>
				</fieldset>
				</form>
			</div>
			<!--Web Form-->