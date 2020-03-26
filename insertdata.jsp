<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
<!------ Include the above in your HEAD tag ---------->
<head>
<meta charset="UTF-8">
<title>Insert Student Data</title>
<style><%@include file="/insertstyle.css"%></style>
</head>
<body>
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}


%>





<!--	navbar starts here-->
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Welcome.jsp"> MCA Admin dashboard</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="Welcome.jsp"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a></li>
        <li><a href="Mca1.jsp"><i class="fa fa-user" aria-hidden="true"></i>
 MCA 1st Year</a></li>
        <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>
 MCA 2nd Year</a></li>
  <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>
 MCA 3nd Year</a></li>
        <li><a href="#"><i class="fa fa-question-circle" aria-hidden="true"></i>
 About us</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="insertdata.jsp"><i class="fa fa-user-plus " aria-hidden="true"></i>
 Add Users</a></li>
        <li><a href="login.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i>
        
 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br>
<br>



<div class="container">
    <h1 class="well">  MCA Student Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form action="connect.jsp" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Uid</label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control" name="uid">
							</div>
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control" name="fname">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control" name="lname">
							</div>
							<div class="col-sm-6 form-group">
								<label>USN</label>
								<input type="text" placeholder="Enter USN.." class="form-control" name="usn">
							</div>
							<div class="col-sm-6 form-group">
								<label>Year</label>
								<input type="text" placeholder="Enter year.." class="form-control" name="year">
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" name="address"></textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>SSLC Percentage/CGPA</label>
								<input type="text" placeholder="Enter SSLC Percentage.." class="form-control" name="sslc">
							</div>	
							<div class="col-sm-4 form-group">
								<label>PUC/12th Percentage/CGPA</label>
								<input type="text" placeholder="PUC/12th Percentage/CGPA.." class="form-control"name="puc">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Degree Percentage/CGPA</label>
								<input type="text" placeholder="Degree Percentage/CGPA" class="form-control"name="degree">
							</div>		
						</div>
												
					<div class="form-group">
						<label>Phone Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" name="phno">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control"name="email">
					</div>	
					
					     <button type="submit" class="btn btn-primary btn-block">Submit</button>					
										
					</div>
				</form> 
				</div>
	</div>
	</div>
	
	<div class="col-md-12">
	<div class="panel-body">
	<table id="tb1-student" class="table table-responsive table-bordered">
	<thead>
	<tr>
		<th>uid</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>USN</th>
		<th>Year</th>
		<th>Address</th>
		<th>SSLC</th>
		<th>PUC</th>
		<th>Degree</th>
		<th>Phone number</th>
		<th>e-mail</th>
		
		</tr>
		<% 
		 	String url="jdbc:mysql://localhost:3306/aliens";
			String dbname="root";
			String dbpass="root";
			ResultSet rs;
			String query="select * from aliens.student";
			    Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection(url,dbname,dbpass);
			   Statement sta=con.createStatement();
			   rs=sta.executeQuery(query);
			   while(rs.next())
			   {
				   int id=rs.getInt("uid");
				   
		%>
		
		
		
		
		
		
		
		
		<tr>
		<td><%=rs.getString("uid") %></td>
		<td><%=rs.getString("fname") %></td>
		<td><%=rs.getString("lname") %></td>
		<td><%=rs.getString("usn") %></td>
		<td><%=rs.getString("year") %></td>
		<td><%=rs.getString("address") %></td>
		<td><%=rs.getString("sslc") %></td>
		<td><%=rs.getString("puc") %></td>
		<td><%=rs.getString("degree") %></td>
		<td><%=rs.getString("phno") %></td>
		<td><%=rs.getString("email") %></td>
		
		
		</tr>
		<%
			   }
		
		%>
		
		
	</table>
	</div>
	</div>


</body>
</html>