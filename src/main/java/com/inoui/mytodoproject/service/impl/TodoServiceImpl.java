package com.inoui.mytodoproject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.inoui.mytodoproject.entity.Todo;
import com.inoui.mytodoproject.repository.TodoRepository;
import com.inoui.mytodoproject.service.TodoService;
@Service
@Transactional
public class TodoServiceImpl implements TodoService {

	@Autowired
	private TodoRepository todoRepository;
	@Override
	public Todo saveTodo(Todo todo) {
		// TODO Auto-generated method stub
		return todoRepository.save(todo);
	}

	@Override
	public Todo updateTodo(Todo todo) {
		// TODO Auto-generated method stub
		return todoRepository.saveAndFlush(todo);
	}

	@Override
	public List<Todo> getAllTodoList() {
		// TODO Auto-generated method stub
		return todoRepository.findAll();
	}

	@Override
	public Todo geTodo(Long todoId) {
		// TODO Auto-generated method stub
		return todoRepository.getOne(todoId);
	}

	@Override
	public void deleteTodo(Long todoId) {
		// TODO Auto-generated method stub
		todoRepository.deleteById(todoId);;

	}

}
