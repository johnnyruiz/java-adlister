package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

        // DONE: show the registration form
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        User user = new User(
                request.getParameter("userName"),
                request.getParameter("userEmail"),
                request.getParameter("passWord")
        );
        DaoFactory.getUsersDao().insert(user);
        try {
            response.sendRedirect("/login");
        } catch (IOException e) {
            e.printStackTrace();
        }

        // DONE: ensure the submitted information is valid
        // DONE: create a new user based off of the submitted information
        // DONE: if a user was successfully created, send them to their profile
    }
}
