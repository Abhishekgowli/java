<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
    <%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("index.jsp");
}
%>

<%
if(request.getParameter("submit")!=null)
{
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String uid=request.getParameter("uid");
	String bname=request.getParameter("bname");
	String isbn=request.getParameter("isbn");
	String aurth=request.getParameter("aurth");
	String stream=request.getParameter("stream");
	String dep=request.getParameter("dep");
	String dot=request.getParameter("dot");
	String dor=request.getParameter("dor");
	
	
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		

		String url="jdbc:mysql://localhost:3306/lib";
		String dbname="root";
		String dbpass="root";
		con=DriverManager.getConnection(url,dbname,dbpass);
		pst=con.prepareStatement("insert into lib.libdata(fname,lname,uid,bname,isbn,aurth,stream,dep,dot,dor)values(?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, fname);
		pst.setString(2, lname);
		pst.setString(3, uid);
		pst.setString(4, bname);
		pst.setString(5, isbn);
		pst.setString(6, aurth);
		pst.setString(7, stream);
		pst.setString(8, dep);
		pst.setString(9, dot);
		pst.setString(10, dor);
		pst.executeUpdate();
		System.out.println("recourd added");
		response.sendRedirect("dashbord.jsp");

	
	}
	
	

%>






    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style><%@include file="/linsert.css"%></style>
<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
 Profile</a></li>
        <li><a href="aboutus.jsp" id="naid4"><i class="fa fa-question-circle" aria-hidden="true"></i>
 About us</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="insertdetails.jsp"id="naid5"><i class="fa fa-user-plus" aria-hidden="true"></i>
 Add details</a></li>
        <li><a href="login.jsp" id="naid6"><i class="fa fa-sign-out" aria-hidden="true"></i>

 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>











<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Book details Form</h2>
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">first name</label>
                                    <input class="input--style-4" type="text" name="fname">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">last name</label>
                                    <input class="input--style-4" type="text" name="lname">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">UserId</label>
                                    <input class="input--style-4" type="text" name="uid">
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Book Name </label>
                                    <input class="input--style-4" type="text" name="bname">
                                </div>
                            </div>
                            

                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">ISBN</label>
                                    <input class="input--style-4" type="text" name="isbn">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Author</label>
                                    <input class="input--style-4" type="text" name="aurth">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Steam</label>
                                    <input class="input--style-4" type="text" name="stream">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Department</label>
                                    <input class="input--style-4" type="text" name="dep">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Date of Taken </label>
                                    <input class="input--style-4" type="date" name="dot">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Date of Return</label>
                                    <input class="input--style-4" type="date" name="dor">
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue btn-lg"  name="submit" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
    
     
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>