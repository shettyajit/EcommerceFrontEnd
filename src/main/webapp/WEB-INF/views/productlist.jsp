<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List products</title>
</head>
<%@include file="header.jsp"%>

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
<body ng-app="prodapp" ng-controller="myprodController"
	ng-init="listProduct()">


	Search:
	<input type="text" ng-model="searchCondition1"
		placeholder="Search Product">
	<h3>Product List {{20+20}}</h3>

	<table class="tg">
		<tr>
			<th width="80">Product Id</th>
			<th width="120">Product Name</th>
			<th width="80">Product Price</th>
			<th width="80">Category Id</th>
			<th width="120">Product Description</th>
			<th width="120">Product Image</th>
			<th width="60">Edit</th>
			<th width="60">Delete</th>
		</tr>
		<%-- 			<c:forEach items="${productList}" var="p"> --%>
		<tr ng-repeat="p in products | filter:searchCondition1">

			<td>{{p.productid}}</td>
			<td>{{p.productname}}</td>
			<td>{{p.productprice}}</td>
			<td>{{p.categoryname}}</td>
			<td>{{p.productdescription}}</td>
			<c:url value ="/resources/images/{{p.productname}}.png" var ="imgg" />
			<td><img src="${imgg}" alt="
				prodimage" height="80" width="80" /></td>
			<td><a href="<c:url value='/editprod/${p.productid}' />">Edit</a></td>
			<td><a href="<c:url value='/removeprod/${p.productid}' />">Delete</a></td>
		</tr>



		<%-- 			</c:forEach> --%>
	</table>
	</div>
	<script src="${js}/App.js"></script>
</body>
</html>
