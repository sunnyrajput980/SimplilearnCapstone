package com.springboot.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Movies {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String movieName;

	
	
	
	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name="category_id" , referencedColumnName = "id") private
	  Category category;
	 
	private int price; 
	private String active;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Movies(String movieName, Category category, int price, String active, String image) {
		super();
		this.movieName = movieName;
		this.category = category;
		this.price = price;
		this.active = active;
		this.image = image;
	}
	public Movies() {
		super();
		
	}
	
	
	
	
}