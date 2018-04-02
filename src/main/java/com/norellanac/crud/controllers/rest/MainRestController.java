package com.norellanac.crud.controllers.rest;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.norellanac.crud.models.Book;
import com.norellanac.crud.services.SpringService;

@RestController
public class MainRestController {
	
	@Autowired
	private SpringService springService;
	
	@GetMapping (value="/rest")
	public String hello() {
		return "Hola Mundo Desde RestController, SPRING";
		
	}
	
	@RequestMapping("list")
	public Collection<Book> getAllBooks(){
		return springService.findAllBooks();
	}
	
	@GetMapping("deleteRest")
	public void deleteBook(@RequestParam long id ){
		springService.delete(id);
	}
	
	@GetMapping("up")
	public void upBook(@ModelAttribute Book book ){
		book.setBookName("mierda");
		springService.save(book);
	}
	
	
}
 