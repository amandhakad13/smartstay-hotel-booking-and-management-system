<%@page import="java.util.ArrayList"%>
<%@page import="com.smartstay.dao.RoomsDao"%>
<%@page import="com.smartstay.model.Room" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
	String user = (String)session.getAttribute("user");
	if(user==null) {
		response.sendRedirect("login.jsp");
	}
%>


<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Rooms - Smart Stay</title>
<link rel="stylesheet" href="css/book_rooms.css">
</head>
<body>
	<header>
		<nav class="container">
			<div class="logo">Smart Stay</div>
			<div class="nav-links">
				<a href="user_dashboard.jsp" class="btn btn-secondary">Home</a>
			</div>
		</nav>
	</header>

	<section class="page-title">
		<div class="container">
			<h1>Available Rooms</h1>
			<p>Choose from our selection of luxury accommodations</p>
		</div>
	</section>

	<section class="rooms-section">
		<div class="container">
			<div class="rooms-grid">
			
			<%
			
				RoomsDao rdao = new RoomsDao();
			
				ArrayList<Room> al = rdao.displayAllRooms();
				
				if(al.isEmpty()) {
					%>
					<h3>No Rooms Are Found</h3>
					<%
				}
				
				for(Room r : al) {
					%>
					<div class="room-card">
						<div class="room-image">
							<img src="roomImage?id=<%= r.getR_id() %>" alt="room image" />
						</div>
						<div class="room-info">
							<div class="room-header">
								<h3><%= r.getR_name() %></h3>
								<span class="room-id">Room No: <%= r.getR_no() %></span>
							</div>
							<div class="room-price">₹<%= r.getPrice() %></div>
							<ul class="room-features">
								<li><%= r.getFeatures() %></li>
							</ul>
							<div class="room-status available"><%= r.getStatus() %></div>
							<button class="btn-book">Book Now</button>
						</div>
					</div>
					<%
				}
			
			%>
				
			</div>
		</div>
	</section>
</body>
</html>