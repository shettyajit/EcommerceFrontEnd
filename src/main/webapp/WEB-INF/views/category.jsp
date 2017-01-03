<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />
<spring:url value="/resources/images" var="img" />
<spring:url value="/resources/fonts" var="fonts" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stride Category</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>

</head>

<style>

/*--login--*/
.login{
	padding:6em 0;
}
.account-grids {
    margin-top: 2em;
}
.main-agileits {
    width: 30%;
    margin: 0em auto ;
	box-shadow: 0px 0px 15px 0px #D6D6D6;
	-o-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-moz-box-shadow: 0px 0px 15px 0px #D6D6D6;
	-webkit-box-shadow: 0px 0px 15px 0px #D6D6D6;
	padding: 3em ;
}

.key  input[type="text"] ,.key  input[type="password"]{
    width: 87%;
    padding: 10px 10px;
    font-size: 1em;
    border: none;
    border-bottom: none;
    outline: none;
    color: #999;
    float: left;
    background: none;
}
.key i{
	    float: left;
    color: #999;
    font-size: 1.1em;
    padding: 13px;
}
.key {
    background: #fff;
    border: 1px solid #999;
    margin-bottom: 2em;
}
.form-w3agile h3{
    color: #1565C0;
    font-size: 2.5em;
    text-align: center;
    margin-bottom: 1.5em;
}
h3.account-text{
	color: #1565C0;
    font-size: 2.5em;
    text-align: center;
    margin-bottom: 1.5em;
}
.account-grid h5 {
    font-size: 1.5em;
    color: #AF1D0D;
    margin-bottom: 0.54em;
}
.form-w3agile input[type="submit"] {
    background: #fdb515;
    color: #FFFFFF;
    text-align: center;
    padding: 10px 0;
    border: none;
    font-size: 1em;
    outline: none;
    width: 32%;
    cursor: pointer;
    margin-bottom:30px;
}
.form-w3agile  input[type="submit"]:hover{
	background:#AF1D0D;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
}
.account-grid input[type="submit"] {
    background: #dd4b39;
    color: #FFFFFF;
    text-align: center;
    padding: 10px 0;
    border: none;
    font-size: 1em;
    outline: none;
    width: 32%;
    cursor: pointer;
    margin-bottom:30px;
}
.account-grid  input[type="submit"]:hover{
	background:#AF1D0D;
	transition:0.5s all;
	-webkit-transition:0.5s all;
	-moz-transition:0.5s all;
	-o-transition:0.5s all;
	-ms-transition:0.5s all;
}
.forg a {
    text-decoration: none;
    color: #AF1D0D;
    font-size:1em;
}
.forg a:hover{
	color:#fdb515;
}
.forg-left{
	float:left;
}
.forg-right{
	float:right;
}
.form1 input[type="submit"] {
	margin-bottom:0;
}
/*--//login--*/

.body{
	background:url("${img}/stridebg.png") no-repeat 0px 0px;
	background-size:cover;
	font-family: 'Open Sans', sans-serif;
	background-attachment:fixed;
}
.main-agileits{
	background:#fff;
}

</style>
<body>
	<%@include file="header.jsp"%>


	<!--content -->
	<div class="content">
		<!--login -->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Category</h3>
					<c:url var="addcatg" value="/category/add"></c:url>
					<form:form action="addcatg" commandName="Catgdata">
						
						<form:label path="category_id">ID</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-asterisk" aria-hidden="true"></i>
							<form:input type="text" path="category_id"/>
							<div class="clearfix"></div>
						</div>
						<form:label path="category_name">Name</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							<form:input type="text" path="category_name" />
							<div class="clearfix"></div>
						</div>

						<form:label path="category_description">Description</form:label>
						<div class="key">
							<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
							<form:input path="category_description" />
							<div class="clearfix"></div>
						</div>

						<input type="submit" value="Submit">
						</form:form>
				</div>

			</div>
		</div>
		<!--login -->
	</div>
	<!--content -->
	
	
	<%@include file="footer.jsp"%>
</body>
</html>