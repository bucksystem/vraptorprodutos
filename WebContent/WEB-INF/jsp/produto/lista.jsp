<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" src="<c:url value="/js/jquery-1.6.1.min.js"/>" ></script>

<script type="text/javascript">
	function excluiritem(id) {
		$.get('remove?produto.id='+id, function(){
			    $('#produto-'+id).remove();
			    alert("Excluído com Sucesso !!!");
	        }
	     );
	}
</script>

<title>Lista de Produtos</title>
</head>
<body>

<div id="mensagem" style="align:center">

	${mensagem }

</div>


<table>
<c:forEach var="produto" items="${produtoList }">
	<tr id="produto-${produto.id }">
		<td>${produto.id} </td>
		<td>${produto.nome}</td>
		<td>${produto.descricao}</td>
		<td>${produto.preco}</td>
		<td><a href="" onclick="excluiritem(${produto.id}); return false;">Remove</a></td>
	</tr>
</c:forEach>
</table>

</body>
</html>