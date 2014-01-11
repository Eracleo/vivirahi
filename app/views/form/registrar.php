<h1>Crear Nueva Cuenta</h1>
<form action="<?php print base_url(); ?>usuarioc/set.html" method="post" class="info">
<fieldset>
	<div class="field">
		<label>Nombre : </label>
		<input type ="text" name="nombre" size="60" required>
	</div>
	<div class="field">
		<label>E-mail :</label>
		<input type="email" name="email" size="60" >
	</div>
	<div class="field">
		<label>Password</label>
		<input type="password" name="password" required size="60">
	</div>
	<div class="field">
		<label>Dirección : </label>
		<input type="text" name="direccion" required size="60">
	</div>
	<div class="field">
		<label>Telefono</label>
		<input type="text" name="telefono" required size="60">
	</div>
	<div class="field">
		<label>Celular : </label>
		<input type="text" name="celular" size="60">
	</div>
	<div>
		<input type="submit" name="registrar" value="Registrar" class="button">
	</div>
</fieldset>
</form>