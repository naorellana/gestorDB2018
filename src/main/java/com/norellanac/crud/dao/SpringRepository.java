package com.norellanac.crud.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.norellanac.crud.models.Book;

@Repository
public interface SpringRepository extends CrudRepository<Book,Long>{

}
