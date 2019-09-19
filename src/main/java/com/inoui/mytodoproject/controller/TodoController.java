package com.inoui.mytodoproject.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inoui.mytodoproject.entity.Todo;
import com.inoui.mytodoproject.service.TodoService;
@Controller
public class TodoController {

	@Autowired
	private TodoService todoService;
	
	@RequestMapping("/")
	public String homePage() {
		return"main";
	}

	@GetMapping(value="/listTodo")
	public String list() {
		return "list";
	}

	//First step with git
	
	
	@GetMapping(value="/addTodo")
	public String todoPage(@ModelAttribute("todo") Todo todo) {
		
		return"todo";
	}
	
	@PostMapping(value="/addTodo")
    public String addTodo(Todo todo) {
	todoService.saveTodo(todo);	
	return "redirect:/listTodo";	
	}	
	
	@RequestMapping("/edit")
	public String editPage() {
		return"todo";
	}
	
	
	
	
	
	
	
}
