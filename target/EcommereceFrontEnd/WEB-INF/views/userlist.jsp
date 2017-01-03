<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List User</title>
</head>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
<body>
	<h3>User List</h3>

		<table class="tg">
			<tr>
				<th width="80">User ID</th>
				<th width="120">User Name</th>
				<th width="80">User Email</th>
				<th width="80">User Password</th>
				<th width="120">User phoneno</th>
<!-- 				<th width="60">Edit</th> -->
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${userList}" var="u">
				<tr>
					<td><c:out value="${u.userID}"/></td>
					<td><c:out value="${u.userName}"/></td>
					<td><c:out value="${u.userEmail}"/></td>
					<td><c:out value="${u.userPassword}"/></td>
					<td><c:out value="${u.userPhoneno}"/></td>
<%-- 					<td><a href="<c:url value='/edituser/${u.userID}' />">Edit</a></td> --%>
					<td><a
						href="<c:url value='/removeuser/${u.userID}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

 	 	</body>
</html>