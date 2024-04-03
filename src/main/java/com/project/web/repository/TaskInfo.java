package com.project.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.model.Task;

public interface TaskInfo extends JpaRepository<Task, Long> {

}
