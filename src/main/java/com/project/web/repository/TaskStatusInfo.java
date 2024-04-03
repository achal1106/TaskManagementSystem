package com.project.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.model.TaskStatus;

public interface TaskStatusInfo extends JpaRepository<TaskStatus, Integer> {
	
}
