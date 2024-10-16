<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Producto</title>
</head>
<body bgcolor="#c5dec5">
<h1 align="center">Registrar Producto</h1>
<form action="ControladorProducto" method="post">
	<table border="2" align="center">
		<tr>
			<td>Nombre de producto</td>
			<td><input type="text" name="nonproducto"></td>
		</tr>
		<tr>
			<td>Precio de producto</td>
			<td><input type="text" name="preproducto"></td>
		</tr>
		<tr>
			<td>Cantidad de productos</td>
			<td><input type="text" name="cantproducto"></td>
		</tr>
		<tr>
			<td>Total del producto</td>
			<td><input type="text" name="totalproducto"></td>
		</tr>
		<tr>
			<td>Codigo de barras del producto</td>
			<td><input type="text" name="codbarrasproducto"></td>
		</tr>
		<tr>
			<td>Numero lote de producto</td>
			<td><input type="text" name="nroloteproducto"></td>
		</tr>
		<tr>
			<td>Fecha de vencimiento de producto</td>
			<td><input type="text" name="fechavenproducto"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Registrar Producto"></td>
		</tr>
	</table>
	</form>
</body>
</html>