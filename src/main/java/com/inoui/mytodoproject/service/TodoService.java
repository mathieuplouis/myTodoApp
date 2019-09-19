package com.inoui.mytodoproject.service;

import java.util.List;

import com.inoui.mytodoproject.entity.Todo;

public interface TodoService {

	Todo saveTodo(Todo todo);
	Todo updateTodo (Todo todo);
	List<Todo> getAllTodoList();
	Todo geTodo(Long todoId);
	void deleteTodo(Long todoId);
}
