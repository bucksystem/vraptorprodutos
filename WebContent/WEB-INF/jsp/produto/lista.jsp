<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Lista de Produtos</title>
</head>
<body>

<div id="mensagem" style="align:center">

	${mensagem }

</div>


<table>
<c:forEach var="produto" items="${produtoList }">
	<tr>
		<td>${produto.id} </td>
		<td>${produto.nome}</td>
		<td>${produto.descricao}</td>
		<td>${produto.preco}</td>
	</tr>
</c:forEach>
</table>

</body>
</html>