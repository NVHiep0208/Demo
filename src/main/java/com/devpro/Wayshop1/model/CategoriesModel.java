package com.devpro.Wayshop1.model;

import com.devpro.Wayshop1.entities.CategoriesE;

public class CategoriesModel {
	private int id;
	private String name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public CategoriesModel(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public CategoriesModel(int id) {
		super();
		this.id = id;
	}
	
}
