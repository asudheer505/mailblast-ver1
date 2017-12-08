<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page session="true" %>
    <%@ page import="com.sudheer.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<jsp:useBean id= "m" class="com.sudheer.mail" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<div id="header"></div>
<% 
String status=(String)session.getAttribute("status");
%>


<%if(status!=null){ %>
<!-- Form Start -->

<div class="container">

<br />
<div class="form-group" align="center">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <a href="SendBulkEmail.jsp" ><button type="button" class="btn btn-warning">Send Rich HTML Group Email<span class="glyphicon glyphicon-send"></span></button>
  </a>&nbsp;&nbsp;&nbsp;&nbsp;
  	<a href="SendBulkTextEmail.jsp" ><button type="button" class="btn btn-warning">Send Text Group Email<span class="glyphicon glyphicon-send"></span></button>
  </a>
  
  </div>
</div>


</div>



    <!-- /.container -->

<!-- Form End-->
<%} 
else {%>

<center>
<script>alert('Gmail Address or App Key is wrong. Please check your credentials and Re-login'); window.location.assign('loginform.jsp');</script>
</center>
<%} %>

<script> 
  $("#header").load("Header.jsp"); 
</script> 
</body>
</html>