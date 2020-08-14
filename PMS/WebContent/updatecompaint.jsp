<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
    <%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<%
if(request.getParameter("submit")!=null)
{
	String id=request.getParameter("id");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String cid=request.getParameter("cid");
	String address=request.getParameter("address");
	String pno=request.getParameter("pno");
	String iplace=request.getParameter("iplace");
	String date=request.getParameter("date");
	String time=request.getParameter("time");
	String crime=request.getParameter("crime");
	String dcrime=request.getParameter("dcrime");
	
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		

		String url="jdbc:mysql://localhost:3306/pms";
		String dbname="root";
		String dbpass="root";
		con=DriverManager.getConnection(url,dbname,dbpass);
		pst=con.prepareStatement("update pms.crecord set fname=?,lname=?,cid=?,address=?,pno=?,iplace=?,date=?,time=?,crime=?,dcrime=? where id=?");
		pst.setString(1, fname);
		pst.setString(2, lname);
		pst.setString(3, cid);
		pst.setString(4, address);
		pst.setString(5, pno);
		pst.setString(6, iplace);
		pst.setString(7, date);
		pst.setString(8, time);
		pst.setString(9, crime);
		pst.setString(10,dcrime);
		pst.setString(11, id);
		pst.executeUpdate();
		System.out.println("updated added");

	
	}
	
	

%>













<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Register Forms For Complaint</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="./css/regcss.css" rel="stylesheet" media="all">
    <style><%@include file="/complaint.css"%></style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    
    
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="navid">
  <div class="container-fluid"id="navid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" id="naid1" href="dashbord.jsp">Admin dashboard</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="ulcolor">
      <ul class="nav navbar-nav"id=ulid1>
        <li><a href="dashbord.jsp" id="naid2"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a></li>
        
        <li><a href="dashbord.jsp" id="naid3"><i class="fa fa-users" aria-hidden="true"></i>
 View</a></li>
        <li><a href="aboutus.jsp" id="naid4"><i class="fa fa-question-circle" aria-hidden="true"></i>
 About us</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="insertcomplaint.jsp"id="naid5"><i class="fa fa-user-plus" aria-hidden="true"></i>
 Add Users</a></li>
        <li><a href="login.jsp" id="naid6"><i class="fa fa-sign-out" aria-hidden="true"></i>

 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br>



    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Complaint Registration Form</h2>
                </div>
                <div class="card-body">
                    <form method="post" action="" >
                    <%
                    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            		Connection con;
            		PreparedStatement pst;
            		ResultSet rs;
            		

            		String url="jdbc:mysql://localhost:3306/pms";
            		String dbname="root";
            		String dbpass="root";
            		con=DriverManager.getConnection(url,dbname,dbpass);
                    
            		String id=request.getParameter("id");
            		pst=con.prepareStatement("select * from pms.crecord where id=?");
            		pst.setString(1, id);
            		rs=pst.executeQuery();
            		
            		while(rs.next())
            		{
            			
            		
                    
                    
                    
                    
                    %>
                    
                    
                        <div class="form-row m-b-55">
                        
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input1-group-desc">
                                            <input class="input--style-5" type="text" name="fname" value=" <%=  rs.getString("fname")%>">
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input1-group-desc">
                                            <input class="input--style-5" type="text" name="lname" value=" <%=  rs.getString("lname")%>">
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Cid</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="cid" value=" <%=  rs.getString("cid")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="address" value=" <%=  rs.getString("address")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Pno</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="pno" value=" <%=  rs.getString("pno")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Incedent place</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="iplace" value=" <%=  rs.getString("iplace")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">date</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="date" name="date" value=" <%=  rs.getString("date")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Time</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="time" name="time" value=" <%=  rs.getString("time")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">crime</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="crime" value=" <%=  rs.getString("crime")%>">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Descption of crime</div>
                            <div class="value">
                                <div class="input-group1">
                                    <input class="input--style-5" type="text" name="dcrime" value=" <%=  rs.getString("dcrime")%>">
                                </div>
                            </div>
                        </div>
                        <% } %>
                        
                        <div>
                            <button class="btn1 btn--radius-2 btn--red" type="submit" name="submit">Register</button>
                        </div>
                        <br>
                        <div class="p-t-15">
                            <a href="dashbord.jsp" class="btn1 btn--radius-2 btn--blue">Back</a>
                            
                        </div>
                        </div>
                        
                        
                        
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->