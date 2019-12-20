package ru.job4j.carprice.controller;

import ru.job4j.carprice.service.UserService;
import ru.job4j.carprice.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {

  private final UserService userService = UserServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    HttpSession session = req.getSession();
    session.removeAttribute("loggedUser");
    resp.sendRedirect("/");
  }

}
