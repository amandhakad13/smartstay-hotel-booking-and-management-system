<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Smart Stay</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-container">
        <div class="login-header">
            <a href="index.html" class="back-home">← Home</a>
            <h1>Welcome Back</h1>
            <p>Sign in to Smart Stay</p>
        </div>
        
        <form class="login-form" method="post" action="loginServlet">
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <button type="submit" class="btn btn-primary">Login</button>
            
            <div class="register-link">
                <p>Don't have an account?</p>
                <a href="register.jsp" class="btn-secondary">Go to Register</a>
            </div>
        </form>
    </div>
    
    <%
    
    	String fail = (String) session.getAttribute("fail");
        if(fail!=null) {
        	%>
        	<h3><%= fail %></h3>   
        	<%
        	session.removeAttribute("fail");
        }
    %>
    
    <%
        	
        	String success = (String) session.getAttribute("success");
            if(success != null) {
        	%>
        		<h3><%= success %></h3>    
        	<% 
        		session.removeAttribute("success");
            }
    %>
</body>
</html>