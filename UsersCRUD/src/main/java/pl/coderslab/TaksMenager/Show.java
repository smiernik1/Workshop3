package pl.coderslab.TaksMenager;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/show")
public class Show extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/show.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}