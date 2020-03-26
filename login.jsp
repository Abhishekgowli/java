<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style><%@include file="/style.css"%></style>
</head>
<body>
<section class="contanier-fluid bg">
            <section class="row justify-content-center">
                <section class="col-12 col-sm-6  col-md-3">
                    <form class="form-contanier "action="Login">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Username</label>
                        <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Username" name="Username">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your Username with anyone else.</small>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control"  placeholder="Password" name="Password">
                      </div>
                      
                      <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </form>
                    
                </section>
            </section>
        </section>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>