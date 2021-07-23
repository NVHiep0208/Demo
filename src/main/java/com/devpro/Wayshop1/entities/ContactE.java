package com.devpro.Wayshop1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_contact")
public class ContactE extends BaseEntity{
	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(name = "subject", nullable = false)
	private String subject;
	
	@Column(name = "email", nullable = false)
	private String email;
	
	@Column(name = "request_type", nullable = false)
	private String request_type;
	
	@Column(name = "message", nullable = false)
	private String message;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRequest_type() {
		return request_type;
	}

	public void setRequest_type(String request_type) {
		this.request_type = request_type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
}
