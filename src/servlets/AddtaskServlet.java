package servlets;
import db.DBManager;
import db.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.http.HttpServlet;

@WebServlet(value = "/add-task")
public class AddtaskServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String name = request.getParameter("task_name");
        String description = request.getParameter("task-description");
        String deadlineDate = request.getParameter("task-deadlineDate");


        Task newTask = new Task();
        newTask.setName(name);
        newTask.setDescription(description);
        newTask.setDeadlineDate(deadlineDate);

        DBManager.addTask(newTask);

        response.sendRedirect("/home");
    }
}
