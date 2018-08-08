<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login-form</title>

<style>

.failed{
color:red;
}
</style>
</head>
<center>
	<body>

		<h1>My login custome page</h1>

		<form:form
			action="${pageContext.request.contextPath}/authenticateTheUser"
			method="POST">
			<c:if test="${param.error!=null}">
				<i class="failed">invalid credentials...check it once again.</i>
			</c:if>
			<p>
				User Name :<input type="text" name="username" />
			</p>
			<p>
				Password :<input type="password" name="password" />
			</p>
			<input type="submit" value="Login">
		</form:form>
	</body>
</center>
</html>