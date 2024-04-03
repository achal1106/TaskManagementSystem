package com.project.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.web.model.Task;
import com.project.web.repository.TaskInfo;

@Controller
//@RequestMapping("/tasks")
public class TaskController {

	@Autowired
	private TaskInfo taskrepo;
	
	@GetMapping("/add")
	public String insert() {
		return "AddTask.jsp";
	}
	
	@PostMapping("/add1")
	public String add(@ModelAttribute Task t) {
		taskrepo.save(t);
		return "redirect:/fetch1";
	}
	
	@RequestMapping("/fetch1")
	public String fetchdata(Model m) {
		List<Task> li = taskrepo.findAll();
		m.addAttribute("taskdata", li);

		return "TaskList.jsp";

	}
	
	@GetMapping("/update{id}")
	public String update(@PathVariable Long id,Model m)
	{
		Task ob=taskrepo.findById(id).orElse(null);
		
		m.addAttribute("taskdata",ob);
		
		return "EditTask.jsp";
	}
	
	@PostMapping("/edit1/{id}")
	public String editTask(@PathVariable Long id,@ModelAttribute Task t)
	{
		Task ob=taskrepo.findById(id).orElse(null);
		
		if(ob!=null)
		{
			ob.setTitle(t.getTitle());
			ob.setAssignee(t.getAssignee());
			ob.setDueDate(t.getDueDate());
			
			taskrepo.save(ob);
		}
		return "redirect:/fetch1";
	}
	
	@RequestMapping("/delete1/{id}")
	public String deleteTask(@PathVariable Long id) {
		taskrepo.deleteById(id);
		return "redirect:/fetch1";
	}
	
//	@GetMapping("/status{id}")
//	public String stateChange(@PathVariable Long id,Model m)
//	{
//		Task ob=taskrepo.findById(id).orElse(null);
//		
//		m.addAttribute("taskdata",ob);
//		
//		return "EditTask.jsp";
//	}
//	
//	@PostMapping("status{id}")
//	public String stateChange(@PathVariable Long id,@ModelAttribute Task t)
//	{
//		Task ob=taskrepo.findById(id).orElse(null);
//		
//		if(ob!=null)
//		{
//			ob.setTitle(t.getTitle());
//			ob.setAssignee(t.getAssignee());
//			ob.setDueDate(t.getDueDate());
//			ob.setCompleted(true);
//			
//			taskrepo.save(ob);
//		}
//		return "redirect:/fetch1";
//	}

	
	
	
//	@GetMapping("/edit/{id}")
//	public String editTaskForm(@PathVariable("id") Long id, Model model) {
//		Task ob=new Task();
//		ob=taskrepo.findById(id).orElseThrow(()-> new IllegalArgumentException("Invalid task id: "+id));
//		model.addAttribute("task", ob);
//		return "EditTask"; //JSP file for editing task
//	}
//	
//	@PostMapping("/update/{id}")
//	public String updateTask(@PathVariable("id") Long id, @ModelAttribute Task t, Model m) {
//		taskrepo.save(t);
//		return "redirect:/tasks/";
//	}
	
	
//	@GetMapping("/")
//	public String getAllTasks(Model model) {
//		List<Task> li=taskrepo.findAll();
//		model.addAttribute("tasks", li);
//		return "TaskList"; //JSP file to display task list
//	}
//	
//	@RequestMapping("/add")
//	public String addTask(@ModelAttribute Task t) {
//		taskrepo.save(t);
//		System.out.println("************************************");
//		return "redirect:/tasks/";
//	}
//	
	
//	

//	
	
}
