<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<link rel="stylesheet" type="text/css"  href="css/design.css">
</head>
<body>
	<c:set var="filePath" value="${filePath}"/>
	<c:choose>
		<c:when test="${empty filePath}">
			<c:set var="filePath" value="home"/>
		</c:when>
	</c:choose>
	<jsp:include page="nav.jsp"/>
		<section>
 			<jsp:include page="${filePath}.jsp"/> 
		</section>
</body>
</html>