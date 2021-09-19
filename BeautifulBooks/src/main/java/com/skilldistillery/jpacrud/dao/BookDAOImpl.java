package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Book;

@Service
@Transactional
public class BookDAOImpl implements BookDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Book findById(int id) {
		return em.find(Book.class, id);
	}

	@Override
	public List<Book> findAll() {
		String jpql = "SELECT b FROM Book b";
		return em.createQuery(jpql, Book.class).getResultList();
	}

	@Override
	public List<Book> findByTitle(String title) {
		String jpql = "SELECT b FROM Book b WHERE title LIKE :title";
		return em.createQuery(jpql, Book.class).setParameter("title", "%"+title+"%").getResultList();
	}

	@Override
	public boolean delete(int id) {
		Book book =em.find(Book.class, id);
		em.remove(book);
		if(em.contains(book)) {
		return false; 
		} else {
			return true;
		}
	}

	@Override
	public boolean update(Book book) {
		Book manageBook = em.find(Book.class, book.getId());
		manageBook.setTitle(book.getTitle());
		manageBook.setHeroineName(book.getHeroineName());
		manageBook.setHeroName(book.getHeroName());
		manageBook.setSeries(book.getSeries());
		manageBook.setDescription(book.getDescription());
		manageBook.setRating(book.getRating());
		return true;
	}

	@Override
	public Book create(Book book) {
		em.persist(book);
		return book;
	}

}
