
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="index.jsp">Menu Principal</a>
	<hr>
	<h1>Listado Mejoras</h1>	
	<c:if test="${txt != null}">
	<h3><c:out value="${txt}"></c:out></h3>
</c:if>

	<table>
		<tr>
			<th>Fecha Mejora</th>
			<th>Nombre Cliente</th>
			<th>Motivo Mejora</th>
			<th>Actividades Mejora</th>
			<th>Estado Mejora</th>
		</tr>
		<c:forEach items="${listmej}" var="lm">
			<tr>
				<td>${lm.getFechamejora()}</td>
				<td>${lm.getNombrecliente()}</td>
				<td>${lm.getMotivomejora()}</td>
				<td>${lm.getActividadesmejora()}</td>
				<td>${lm.getEstadomejora()}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
</body>
</html>