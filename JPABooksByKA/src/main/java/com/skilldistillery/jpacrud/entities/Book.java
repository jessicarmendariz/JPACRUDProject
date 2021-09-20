package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String title;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="heroine_name")
	private String heroineName;
	
	@Column(name="hero_name")
	private String heroName;
	
	private String series;
	
	private String description;
	
	private int rating;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String name) {
		this.title = name;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getHeroineName() {
		return heroineName;
	}

	public void setHeroineName(String heroineName) {
		this.heroineName = heroineName;
	}

	public String getHeroName() {
		return heroName;
	}

	public void setHeroName(String heroName) {
		this.heroName = heroName;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Book [Book ID=" + id + ", Title=" + title + ", Cover=" + imageUrl + ", Heroine=" + heroineName
				+ ", Hero=" + heroName + ", Series=" + series + ", Description=" + description + ", Rating="
				+ rating + "]";
	}
		}
	
