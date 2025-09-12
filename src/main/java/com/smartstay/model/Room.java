package com.smartstay.model;

import java.util.Arrays;

public class Room {
	private int r_id;
	private byte[] image;
	private String r_name;
	private int r_no;
	private String type;
	private float price;
	private String status;
	private String features;
	
	public Room() {
		
	}

	public Room(int r_id, byte[] image, String r_name, int r_no, String type, float price, String status, String features) {
		super();
		this.r_id = r_id;
		this.image = image;
		this.r_name = r_name;
		this.r_no = r_no;
		this.type = type;
		this.price = price;
		this.status = status;
		this.features = features;
	}
	
	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	public byte[] getImage() {
		return image;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}

	@Override
	public String toString() {
		return "Room [r_id=" + r_id + ", image=" + Arrays.toString(image) + ", r_name=" + r_name + ", r_no=" + r_no
				+ ", type=" + type + ", price=" + price + ", status=" + status + ", features=" + features + "]";
	}	
}
