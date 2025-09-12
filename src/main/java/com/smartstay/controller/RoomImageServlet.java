package com.smartstay.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;

import com.smartstay.dao.RoomsDao;
import com.smartstay.model.Room;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RoomImageServlet
 */
@WebServlet("/roomImage")
public class RoomImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int roomId = Integer.parseInt(request.getParameter("id"));

        RoomsDao rdao = new RoomsDao();
        Room room = null;
		try {
			room = rdao.getRoomById(roomId);
			byte[] imgData = room.getImage();
	        if (imgData != null) {
	            response.setContentType("image/jpeg"); // or image/png
	            OutputStream out = response.getOutputStream();
	            out.write(imgData);
	            out.flush();
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
