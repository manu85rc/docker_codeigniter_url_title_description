<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>sitio web</title>
	<meta name="description" content="The small framework with powerful features">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/favicon.ico"/>

	<!-- STYLES -->

	<style {csp-style-nonce}>
		body{
			padding-top:50px;
		}
		table{
			width:100%;
		}
		table,th,td{
			border: 1px solid;

		}
		input[type="url"]{
			width: 80%;
		}
		input[type="submit"]{
			width: 15%;
		}
		table input[type="submit"]{
			width: 100%;
		}
	</style>
</head>
<body>
	<div class="center">
		<form method="post" action="prueba/guardar">
			<input type="url" name="web" placeholder="sitio web"  cols="500" required="required">
			<input type="submit">
		</form>
	</div>
	<hr>
	<table STYLES="border:1">
		<tr><th>ID</th><th>URL</th><th>Titulo:</th><th>Descripcion:</th><th>¿borrar?</th></tr>
		<?php foreach($lista as $key){ ?>
		<tr>
			<td><?=$key['id']?></td>
			<td><?=$key['url']?></td>
			<td><?=$key['titul']?></td>
			<td><?=$key['desc']?></td>
			<td><form method="post" action="prueba/borrar"><input type="hidden" name="borrar" value="<?=$key['id']?>"><input value="&#9421" type="submit"></form></td>
		</tr>
		<?php } ?>
	</table>

</body>
</html>
