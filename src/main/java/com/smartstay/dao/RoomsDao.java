package com.smartstay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.smartstay.model.Room;
import com.smartstay.util.DBConnection;

public class RoomsDao {
	
	public ArrayList<Room> displayAllRooms() throws SQLException {
		
		Connection con = DBConnection.getConnection();
		String query = "select * from rooms";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<Room> rl = new ArrayList<>();
		
		while(rs.next()) {
			Room r = new Room();
			
			r.setR_id(rs.getInt(1));
			r.setImage(rs.getBytes(2));
			r.setR_name(rs.getString(3));
			r.setR_no(rs.getInt(4));
			r.setType(rs.getString(5));
			r.setPrice(rs.getFloat(6));
			r.setStatus(rs.getString(7 ));
			r.setFeatures(rs.getString(8));
			
			rl.add(r);
			r = null;
		}
		
		return rl;
	}
	
	public Room getRoomById(int id) throws SQLException {
		Connection con = DBConnection.getConnection();
		String query = "select * from rooms where r_id = ?";
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();
		Room r = null;
		if(rs.next()) {
			r = new Room();
			
			r.setR_id(rs.getInt(1));
			r.setImage(rs.getBytes(2));
			r.setR_name(rs.getString(3));
			r.setR_no(rs.getInt(4));
			r.setType(rs.getString(5));
			r.setPrice(rs.getFloat(6));
			r.setStatus(rs.getString(7));
		}
		
		return r;
	}
}
