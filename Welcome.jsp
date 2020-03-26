<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">

<title>Admin Dashboard</title>
<style><%@include file="/adminstyle.css"%></style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
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
        <li class="active"><a href="Welcome.jsp"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a></li>
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
        <li><a href="insertdata.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>
 Add Users</a></li>
        <li><a href="login.jsp "><i class="fa fa-sign-out" aria-hidden="true"></i>
        
 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
<!--    navbar ends here-->


<div class="container-fluid">
       <div class="row">
           <div class="col-sm-3 col-md-2 sidebar">
               <ul class="nav nav-sidebar">
                   <li class="active"><a href="#">Reports</a></li>
                   <li><a href="#">Stats</a></li>
                   <li><a href="#">graphs</a></li>
                   <li><a href="#">users</a></li>
               </ul>
               
           </div>
           <div class="col-sm-9 col-md-10 main">
               <h1 class="page-header"><i class="fa fa-tachometer" aria-hidden="true"></i>
 MCA Dashboard</h1>
          <div class="row placeholders">
              <div class="col-xs-6 col-sm-3 placeholder">
                  <img src="images/graph.png" class="img-responsive" width="200" height="200" alt="">
                  <h4>Label</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                  <img src="images/graph.png" class="img-responsive" width="200" height="200" alt="">
                  <h4>Label</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                  <img src="images/graph.png" class="img-responsive" width="200" height="200" alt="">
                  <h4>Label</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                  <img src="images/graph.png" class="img-responsive" width="200" height="200" alt="">
                  <h4>Label</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
          </div>
          <h2 class="sub-header">Detailed Result</h2>
          <hr>
          <div class="table-responsive">
              <table class="table table-striped">
                  <thead>
                      <tr>
                      	 <th>uid</th>
                          <th>Fristname</th>
                          <th>Lastname</th>
                          <th>USN</th>
                          <th>Year</th>
                          <th>Address</th>
                          <th>SSLC</th>
                          <th>PUC</th>
                          <th>Degree</th>
                          <th>Phone number</th>
                          <th>Email-Address</th>
                          
                          
                          
                      </tr>
                  </thead>
                  
                  
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
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  <tbody>
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
                      
                  </tbody>
              </table>
          </div>
           </div>
       </div>
   </div>














<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>