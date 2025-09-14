package com.smartstay.model;

public class Login {
	private int u_id;
	private String name;
	private String role;
	
	public Login() {
		
	}

	public Login(int u_id, String name, String role) {
		super();
		this.u_id = u_id;
		this.name = name;
		this.role = role;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Login [u_id=" + u_id + ", name=" + name + ", role=" + role + "]";
	}
}
