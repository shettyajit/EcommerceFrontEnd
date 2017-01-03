<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>

<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/images" var="img"/>
<spring:url value="/resources/fonts" var="fonts"/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body id="body">


 <%@include file="header.jsp"%>
<br>

	<!--content-->
	<div class="content">
		<!--login-->
		<div class="login">
			<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login To Stride</h3>
					<c:if test="${not empty error}">
						<div class=error style="color: #ff0000">${error}</div>
					</c:if>
					<c:if test="${not empty logout}">
					<div class=logout style="color:#ff0000"> ${logout} </div>
					</c:if>
					<br>
					<form action="<c:url value="j_spring_security-check"/> "method="post">
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i> <input
								type="text" value="User name" name="j_UserID"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'User name';}"
								required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i> <input
								type="password" value="Password" name="j_UserPassword"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Password';}"
								required="">
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Login"> <input type="hidden"
							name="${csrf.parametername}" value="${_csrf.token}" />
					</form>
				</div>
				<div class="forg">
					<a href="<c:url value='/ContactUs'/>" class="forg-left">Forgot
						Password</a> <a href="<c:url value='/Register'/>" class="forg-right">Register</a>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--login-->
	</div>
	<!--content-->




<%@include file="footer.jsp"%>
</body>
</html>