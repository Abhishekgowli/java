<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}


%>
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
      <a class="navbar-brand" href="#"> MCA Admin dashboard</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class=""><a href="Welcome.jsp"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a></li>
        <li class="active"><a href="Mca1.jsp"><i class="fa fa-user " aria-hidden="true"></i>
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
        <li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i>
        
 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
<!--    navbar ends here-->


<h2 class="header center">MCA 1st Year Detailed Result</h2>
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


</body>
</html>