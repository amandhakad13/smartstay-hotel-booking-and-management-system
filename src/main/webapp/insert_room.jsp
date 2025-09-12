<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Room - Smart Stay</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .add-room-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 100%;
            max-width: 500px;
            margin: 20px;
        }
        
        .add-room-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 30px;
            text-align: center;
            position: relative;
        }
        
        .back-home {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(255,255,255,0.2);
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 20px;
            font-size: 14px;
            transition: background 0.3s ease;
        }
        
        .back-home:hover {
            background: rgba(255,255,255,0.3);
        }
        
        .add-room-header h1 {
            font-size: 2rem;
            margin-bottom: 5px;
        }
        
        .add-room-header p {
            opacity: 0.9;
        }
        
        .add-room-form {
            padding: 40px 30px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }
        
        .form-group input, .form-group select {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e5e9;
            border-radius: 8px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }
        
        .form-group input:focus, .form-group select:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        
        .form-row {
            display: flex;
            gap: 15px;
        }
        
        .form-row .form-group {
            flex: 1;
        }
        
        .btn {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            margin-bottom: 15px;
        }
        
        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.3);
        }
        
        .btn-secondary {
            background: #f8f9fa;
            color: #667eea;
            border: 2px solid #667eea;
        }
        
        .btn-secondary:hover {
            background: #667eea;
            color: white;
        }
        
        @media (max-width: 768px) {
            .add-room-container {
                margin: 10px;
            }
            
            .add-room-form {
                padding: 30px 20px;
            }
            
            .form-row {
                flex-direction: column;
                gap: 0;
            }
            
            .back-home {
                font-size: 12px;
                padding: 6px 12px;
            }
        }
    </style>
</head>
<body>
    <div class="add-room-container">
        <div class="add-room-header">
            <a href="index.jsp" class="back-home">← Home</a>
            <h1>Add New Room</h1>
            <p>Create a new room entry</p>
        </div>
        
        <form class="add-room-form" method="post" action="insert-room.jsp">
            <div class="form-group">
                <label for="roomName">Room Name</label>
                <input type="text" id="roomName" name="roomName" required>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="roomNo">Room No</label>
                    <input type="text" id="roomNo" name="roomNo" required>
                </div>
                <div class="form-group">
                    <label for="price">Price (₹/night)</label>
                    <input type="number" id="price" name="price" min="0" required>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="type">Room Type</label>
                    <select id="type" name="type" required>
                        <option value="">Select Type</option>
                        <option value="single">Single</option>
                        <option value="double">Double</option>
                        <option value="deluxe">Deluxe</option>
                        <option value="suite">Suite</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="status">Status</label>
                    <select id="status" name="status" required>
                        <option value="">Select Status</option>
                        <option value="available">Available</option>
                        <option value="booked">Booked</option>
                        <option value="maintenance">Maintenance</option>
                    </select>
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">Add Room</button>
            <a href="available-rooms.jsp" class="btn btn-secondary">View All Rooms</a>
        </form>
    </div>
</body>
</html>