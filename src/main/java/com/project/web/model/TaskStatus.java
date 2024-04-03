package com.project.web.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class TaskStatus {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Sid;
	
	private String STchange;
	
	@OneToOne
	@JoinColumn(name = "id" )
	private Task task;
	
	

	public int getSid() {
		return Sid;
	}
	public void setSid(int sid) {
		Sid = sid;
	}
	public String getSTchange() {
		return STchange;
	}
	public void setSTchange(String sTchange) {
		STchange = sTchange;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	
	public TaskStatus(int sid, String sTchange, Task task) {
		super();
		Sid = sid;
		STchange = sTchange;
		this.task = task;
	}

	public TaskStatus() {
		
	}

	@Override
	public String toString() {
		return "TaskStatus [Sid=" + Sid + ", STchange=" + STchange + ", task=" + task + "]";
	}
}
