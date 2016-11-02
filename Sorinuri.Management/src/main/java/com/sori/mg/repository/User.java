package com.sori.mg.repository;

import org.springframework.stereotype.Component;

@Component
public class User {

	private String id;
	private String pw;
	private String userprogram;
	private String name;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getUserprogram() {
		return userprogram;
	}

	public void setUserprogram(String userprogram) {
		this.userprogram = userprogram;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
