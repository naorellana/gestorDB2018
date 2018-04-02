package com.norellanac.crud.controllers;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.norellanac.crud.models.Book;
import com.norellanac.crud.services.SpringService;

@Controller
public class MainController {
	@Autowired
	private SpringService springService;
	
	@GetMapping("/")
	public String init(HttpServletRequest req) {
		req.setAttribute("books", springService.findAllBooks());
		req.setAttribute("mode", "BOOK_VIEW");
		return "index";
	}
	
	@GetMapping("/update")
	public String update(@RequestParam long id, HttpServletRequest req) {
		req.setAttribute("books", springService.findOne(id));
		req.setAttribute("mode", "BOOK_EDIT");
		return "index";
	} 
	
	//esto se utiliza para que la fecha no de probblemas
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-mm-dd"), false));
	}
	
	@GetMapping("guardar")
	public void guardar( @ModelAttribute Book book, BindingResult bindingResult, HttpServletResponse resp) throws IOException{
		springService.save(book);
		//req.setAttribute("books", springService.findAllBooks());
		//req.setAttribute("mode", "BOOK_VIEW");
		resp.sendRedirect("/");
	} 
	
	
	@GetMapping("new")
	public String newBook (HttpServletResponse resp, HttpServletRequest req) throws IOException{
		req.setAttribute("mode", "BOOK_NEW");
		return "index";
	} 
	
	@GetMapping("/delete")
	public void delete(@RequestParam long id, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		springService.delete(id);;
		resp.sendRedirect("/");
	} 
	
	


}
