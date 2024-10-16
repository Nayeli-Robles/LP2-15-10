<%@page import="model.TblProducto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#c5dec5">
<h1 align="center">SISTE,A WEB INVENTARIO</h1>
<h2 align="center">Derechos reservados de estudianytes de cibertec</h2>

<a href="ControladorProducto"> Registrar Producto</a>
<h2 align="center">Listado de productos</h2>
	<table border="2" align="center">
		<th>Codigo</th>
		<th>Producto</th>
		<th>Precio</th>
		<th>Cantidad</th>
		<th>Total</th>
		<th>Codigo barras</th>
		<th>Nro lote</th>
		
		<%
		List<TblProducto> listadoproducto=(List<TblProducto>)request.getAttribute("listado");
		//aplicamos condicion
		if(listadoproducto!=null){
			//aplicamos un bucle
			for(TblProducto lis:listadoproducto){
		%>
		<tr>
			<td>
				<%=lis.getIdproducto()%>
			</td>
			<td>
				<%=lis.getNomprod()%>
			</td>
			<td>
				<%=lis.getPrecio()%>
			</td>
			<td>
				<%=lis.getCantidad() %>
			</td>
			<td>
				<%=lis.getTotal()%>
			</td>
			<td>
				<%=lis.getCodbarras()%>
			</td>
			<td>
				<%=lis.getNrolote()%>
			</td>
			<td>
				<a href="ControladorProducto?accion=Eliminar&cod=<%=lis.getIdproducto()%>">Eliminar</a>
				<a href="ControladorProducto?accion=Actualizar&cod=<%=lis.getIdproducto()%>">Actualizar</a>
			</td>
		</tr>
		
		<%}%>
		<%}%>
	</table>

</body>
</html>