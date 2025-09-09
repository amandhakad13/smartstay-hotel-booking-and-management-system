package com.smartstay.model;

import java.sql.Timestamp;

public class User {
	
	private int u_id;
	private String name;
	private String email;
	private String password;
	private String role;
	private Timestamp created_at;
	
	
	public User() {
		
	}

	public User(int u_id, String name, String email, String password, String role, Timestamp created_at) {
		super();
		this.u_id = u_id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.role = role;
		this.created_at = created_at;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}

	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", name=" + name + ", email=" + email + ", password=" + password + ", role="
				+ role + ", created_at=" + created_at + "]";
	}
}
