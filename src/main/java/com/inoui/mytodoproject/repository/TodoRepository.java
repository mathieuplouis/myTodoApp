package com.inoui.mytodoproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.inoui.mytodoproject.entity.Todo;
@Repository
public interface TodoRepository extends JpaRepository<Todo, Long> {

}
