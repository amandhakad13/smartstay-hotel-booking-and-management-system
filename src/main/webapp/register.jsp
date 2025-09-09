<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Smart Stay</title>
    <link rel="stylesheet" href="css/register.css">
</head>
<body>
    <div class="register-container">
        <div class="register-header">
            <a href="index.html" class="back-home">← Home</a>
            <h1>Create Account</h1>
            <p>Join Smart Stay today</p>
        </div>
        
        <form class="register-form" method="post" action="register">
        
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <label>Role</label>
                <div class="role-group">
                    <div class="role-option">
                        <input type="radio" id="customer" name="role" value="customer" checked>
                        <label for="customer">Customer</label>
                    </div>
                    <div class="role-option">
                        <input type="radio" id="admin" name="role" value="admin">
                        <label for="admin">Admin</label>
                    </div>
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">Register</button>
            <a href="login.jsp" class="btn btn-secondary">Go to Login</a>
        </form>
    </div>
    
    <%
    	
    	String fail = (String) session.getAttribute("failed");
        
        if(fail!=null) {
        	%>
    		<h3><%= fail %></h3>    
    		<% 
        	
        	session.removeAttribute("failed");
        }
    
    %>
</body>
</html>