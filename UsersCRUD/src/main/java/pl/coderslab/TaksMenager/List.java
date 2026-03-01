package pl.coderslab.TaksMenager;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/list")
public class List extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User[] users = userDao.findAll();

        request.setAttribute("users", users);
        request.getRequestDispatcher("/list.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}