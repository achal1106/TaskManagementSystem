package com.project.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.web.model.User;
import com.project.web.repository.UserInfo;

@Controller
public class UserController {
	
	@Autowired
	private UserInfo userrepo;
	
	@RequestMapping("/")
	public String home() {
		return "Registration.jsp";
	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute User u) {
		userrepo.save(u);
		return "Login.jsp";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password) {
		User ob=new User();
		ob=userrepo.findByEmail(email);
		
		if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password)) {
			return "redirect:/fetch";
		}else {
			return "Registration.jsp";
		}
	}
	
	@RequestMapping("/fetch")
	public String fetchdata(Model model) {
		List<User> li= userrepo.findAll();
		
		model.addAttribute("user", li);
		return "Fetch.jsp";
	}
	
	@RequestMapping("delete/{id}")
	public String deleteUser(@PathVariable int id) {
		userrepo.deleteById(id);
		return "redirect:/fetch";
	}
	
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id, Model m) {
		User ob=userrepo.findById(id).orElse(null);
		m.addAttribute("userdata", ob);
		return "Edit.jsp";
	}
	
	@RequestMapping("edit/{id}")
	public String editUser(@PathVariable int id, @ModelAttribute User u) {
		User ob=userrepo.findById(id).orElse(null);
		
		if(ob!=null) {
			ob.setName(u.getName());
			ob.setEmail(u.getEmail());
			ob.setPhone(u.getPhone());
			ob.setPassword(u.getPassword());
			
			userrepo.save(ob);
		}
		return "redirect:/fetch";
	}
}
