<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="Index.css">
<script src="GoogleAuth.js" defer type="module"></script>	
</head>
<body>

<form action="LoginServlet" method="post">
<div class="login-form">
  <div class="form-title">
    Login Page
  </div>
  <div class="form-input">
    <label for="username" >Username</label>
    <input type="text" id="username" name="username" required>
  </div>
  <div class="form-input">
    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>
  </div>
  <div class="captcha">
    <label for="captcha-input">Enter Captcha</label>
    <div class="preview"></div>
    <div class="captcha-form">
      <input type="text" id="captcha-form" placeholder="Enter captcha text" required>
      <button class="captcha-refresh">
        <i class="fa fa-refresh"></i>
      </button>
    </div>
  </div>
  <div class="form-input">
    <button id="login-btn">Login</button>
    </form>
  </div>
  	<pre>                   ------or---------</pre>
    <button id="google-btn" 
		  style="  margin-top:5px;
		  width:100%;
		  padding:12px;
		  border:none;
		  outline:none;
		  font-size:15px;
		  text-transform:uppercase;
		  background:#4c67ff;
		  border-radius: 5px;
		  color:#ffffff;
		  transition: .3s;
		  cursor:pointer;">
  <i class="fa-solid fa-g"></i>Signup with Google</button>  
</div>



<script src="captcha.js"></script>
</body>
</html>