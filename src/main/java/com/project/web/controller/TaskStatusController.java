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
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.model.Task;
import com.project.web.model.TaskStatus;
import com.project.web.repository.TaskInfo;
import com.project.web.repository.TaskStatusInfo;

@Controller
public class TaskStatusController {
	
	@Autowired
	private TaskStatusInfo STtaskrepo;
	
	@Autowired
	private TaskInfo taskrepo;
	
//	@RequestMapping("/fetchST")
//	public String fetchStatus(Model m) {
//		List<TaskStatus> li = STtaskrepo.findAll();
//		m.addAttribute("STtaskdata", li);
//
//		return "STTaskList.jsp";
//
//	}
	
	@RequestMapping("status{id}")
	public String fetchStatus(@PathVariable Long id,Model m) {
		Task obj = taskrepo.findById(id).orElse(null);
		TaskStatus ob2 = new TaskStatus();
		if(obj != null) {
			ob2.setTask(obj);
			ob2.setSTchange("Yes");
		}
		STtaskrepo.save(ob2);

		return "redirect:/STfetch1";
	}
	
	
	@RequestMapping("/STfetch1")
	public String STfetchdata(Model m) {
		List<TaskStatus> li = STtaskrepo.findAll();
		TaskStatus ob2 = new TaskStatus();
		
		m.addAttribute("STtaskdata", li);

		
		return "STTaskList.jsp";

	}

//	@RequestMapping("/ordersfetch")
//	public String fetchOrder(Model m) {
//		List<Orders> li = orderrepo.findAll();
//		System.out.println("*AAAAA**"+li);
//		m.addAttribute("orders", li);
//		return "orders1.jsp";
//	}
}
