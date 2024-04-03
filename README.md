Task Management System
The Task Management System is a web-based application developed using Spring Boot. 
It provides functionalities for managing tasks and projects, allowing users to create tasks, assign them to team members, set due dates, and track progress. 
The system also supports real-time collaboration through WebSocket.

Features
User Authentication: Secure user authentication and authorization.
Task Creation: Create tasks with titles, descriptions, due dates, and assignees.
Task Assignment: Assign tasks to team members.
Task Status Tracking: Track the status of tasks, such as pending, in progress, or completed.
Real-time Updates: Support real-time collaboration through WebSocket for instant updates on task statuses.
Technologies Used
Spring Boot: Framework for building robust Java applications.
Spring Security: Provides authentication and authorization functionalities.
Spring Data JPA: Simplifies database operations using Java Persistence API.
//WebSocket: Enables real-time communication between the client and server.
MySQL: Relational database management system for data storage.
Setup Instructions
Clone the Repository:

bash
Copy code
git clone https://github.com/acahl1106/task-management-system.git
Configure Database:

Create a MySQL database named task_management.
Update the database configuration in src/main/resources/application.properties.
Build and Run the Application:

bash
Copy code
cd task-management-system
./mvnw spring-boot:run
Access the Application:
Open a web browser and navigate to http://localhost:8080 to access the Task Management System.
