package pl.coderslab.TaksMenager;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/edit")
public class Edit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);

        request.setAttribute("user", user);
        request.getRequestDispatcher("/edit.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);

        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        userDao.update(user);

        response.sendRedirect("/list");
    }
}