<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
	
String user = (String) session.getAttribute("user");

if(user == null) {
	response.sendRedirect("login.jsp");
}

%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Smart Stay</title>
    <link rel="stylesheet" href="css/user_dashboard.css">
</head>
<body>
    <header>
        <nav class="container">
            <div class="logo">Smart Stay</div>
            <div class="user-info">
                <span class="welcome-text">Welcome, <%= user %></span>
                <a href="logout" class="logout-btn">Logout</a>
            </div>
        </nav>
    </header>

    <main class="dashboard-content">
        <div class="container">
            <div class="page-title">
                <h1>User Dashboard</h1>
                <p>Manage your bookings and explore our services</p>
            </div>

            <div class="options-grid">
                <a href="book_rooms.jsp" class="option-card">
                    <span class="option-icon rooms-icon">🏨</span>
                    <h3>Available Rooms</h3>
                    <p>Browse and book from our selection of luxury rooms and suites</p>
                </a>

                <a href="my-bookings.jsp" class="option-card">
                    <span class="option-icon bookings-icon">📋</span>
                    <h3>My Bookings</h3>
                    <p>View and manage your current and past reservations</p>
                </a>

                <a href="profile.jsp" class="option-card">
                    <span class="option-icon profile-icon">👤</span>
                    <h3>My Profile</h3>
                    <p>Update your personal information and preferences</p>
                </a>
            </div>
        </div>
    </main>
</body>
</html>