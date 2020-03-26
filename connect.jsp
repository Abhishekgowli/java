<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String url="jdbc:mysql://localhost:3306/aliens";
	String dbname="root";
	String dbpass="root";
	String query="insert into aliens.student values(?,?,?,?,?,?,?,?,?,?,?)";
	int Uid=Integer.parseInt(request.getParameter("uid"));
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String usn=request.getParameter("usn");
	int year=Integer.parseInt(request.getParameter("year"));
	String address=request.getParameter("address");
	int sslc=Integer.parseInt(request.getParameter("sslc"));
	int puc=Integer.parseInt(request.getParameter("puc"));
	int degree=Integer.parseInt(request.getParameter("degree"));
	String phno=request.getParameter("phno");
	String email=request.getParameter("email");
     
   
   try
   {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection(url,dbname,dbpass);
   PreparedStatement st=con.prepareStatement(query);
    st.setInt(1, Uid);
	st.setString(2, fname);
	st.setString(3, lname);
	st.setString(4, usn);
	st.setInt(5, year);
	st.setString(6, address);
	st.setInt(7, sslc);
	st.setInt(8, puc);
	st.setInt(9, degree);
	st.setString(10, phno);
	st.setString(11, email);
	int count=st.executeUpdate();
	System.out.println(count +"rows affected");
	response.sendRedirect("insertdata.jsp");
	st.close();
	con.close();
   }
   catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
   }
   
   %>       


