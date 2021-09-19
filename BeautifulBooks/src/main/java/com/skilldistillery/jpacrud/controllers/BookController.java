package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.dao.BookDAO;
import com.skilldistillery.jpacrud.entities.Book;

@Controller
public class BookController {
	
	@Autowired
	private BookDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("books", dao.findAll());
		return "home";
	}
	
	@RequestMapping("/searchBook.do")
	public String searchPageForm() {
		return "search";
	}
	
	@RequestMapping("/createBook.do")
	public String createPageForm() {
		return "create";
	}
	
	@RequestMapping(path = "/searchBookById.do")
	public String searchById(@RequestParam("id") int id, Model model) {
		Book book = dao.findById(id);
		if(book == null) {
			return "error";
		} else {
			model.addAttribute("book", book);
			return "displayInfo";
		}
	}
	
	@RequestMapping(path = "/addBookToDB.do")
	public String addBookToDB(Book book, Model model) {
		Book createBook = dao.create(book);
		if(createBook.getTitle() == null) {
			return "error";
		} else {
			return "redirect:searchBookById.do?idNumber=" + createBook.getId();
		}
	}
	
	@RequestMapping(path = "/deleteBookFromDB.do")
	public String deleteBookFromDB(Integer id, Model model) {
		boolean delete = dao.delete(id);
		if(delete) {
			return "redirect:/";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(path = "/bookUpdateForm.do")
	public String bookUpdateForm(Integer id, Model model) {
		model.addAttribute("book", dao.findById(id));
		return "update";
	}
	
	@RequestMapping(path = "/updateBookToDB.do", method = RequestMethod.POST)
	public String updateBookToDB(Book book, RedirectAttributes redir) {
		boolean update = dao.update(book);
		if(update) {
			return "redirect:searchBookById.do?idNumber=" + book.getId();
		} else {
			return "error";
		}
	}

}
