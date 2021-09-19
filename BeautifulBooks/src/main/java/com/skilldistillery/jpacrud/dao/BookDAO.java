package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Book;

public interface BookDAO {
	
	public Book findById(int id);
	public List<Book> findByTitle(String title);
	public List<Book> findAll();
	public boolean delete(int id);
	public boolean update(Book book);
	public Book create(Book book);
}
