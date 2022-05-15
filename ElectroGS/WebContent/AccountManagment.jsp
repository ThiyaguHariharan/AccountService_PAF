<%@page import="com.AccountManagment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<link href="image/d.jpg" rel ="icon" type= "image/icon">
<script src="Components/AccountManagment.js"></script>

</head>
<body>
	<jsp:include page="main/header.jsp"/>
	<div class="container">
		<div class="row">
			<div class="col-6">
				

				<form id="formUserManagment" name="formUserManagment" class="form" method="post" action="UserManagment.jsp">

				<h3>User Management</h3>
				<br>
						Customer Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> 
						
						<br>NIC: <input id="nic" name="nic" type="text"
						class="form-control form-control-sm"> 
						
						<br> Address: <input id="address" name="address" type="text"
						class="form-control form-control-sm"> 
						
						<br> Phone: <input id="phone" name="phone" type="text"
						class="form-control form-control-sm"> 
						
						<br> Email: <input id="email" name="email" type="text"
						class="form-control form-control-sm"> 
						
						<br> Electric Service: <input id="eservice" name="eservice" type="text"
						class="form-control form-control-sm"> 
						
						<br> Wire Installation: <input id="wire" name="wire" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					AccountManagment projectObj = new AccountManagment();
									out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="main/footer.jsp"/>
</body>
</html>
