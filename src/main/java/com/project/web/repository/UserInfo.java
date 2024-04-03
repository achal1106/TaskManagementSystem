package com.project.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.model.User;

public interface UserInfo extends JpaRepository<User, Integer> {
	
	public User findByEmail(String email);
	
}
