package com.norellanac.crud.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.norellanac.crud.dao.SpringRepository;
import com.norellanac.crud.models.Book;


@Service
public class SpringService {
	@Autowired
	SpringRepository springRepository; 
	public Collection<Book> findAllBooks(){
		List<Book> books = new ArrayList<Book>();
		for (Book book : springRepository.findAll() ) {
			books.add(book);
		}
		return books;
	}
	
	public void delete(long id) {
		springRepository.deleteById(id);
	}
	
	public Book  findOne(long id) {
		return springRepository.findById(id).get();
	}
	
	public void  save(Book book) {
		springRepository.save(book);
	}
	
	
}
