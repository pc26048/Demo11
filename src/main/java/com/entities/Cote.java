package com.entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user")
public class Cote {
	@Id
	private int id;
	private String no;
	private String email;
	private String password;
	public Cote(int id, String no, String email, String password) {
		super();
		this.id =  new Random().nextInt(100000);
		this.no = no;
		this.email = email;
		this.password = password;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}

	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	public Cote() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
