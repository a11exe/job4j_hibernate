package ru.job4j.carprice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ru.job4j.carprice.model.User;
import ru.job4j.carprice.service.ServiceAnswer;
import ru.job4j.carprice.service.UserService;
import ru.job4j.carprice.service.UserServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

  private final UserService userService = UserServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    User user = new User();
    user.setLogin(req.getParameter("login"));
    user.setPassword(req.getParameter("password"));

    ServiceAnswer<User> serviceAnswer = userService.signIn(user);

    if (serviceAnswer.isNoErrors()) {
      HttpSession session = req.getSession();
      session.setAttribute("loggedUser", serviceAnswer.getValue());
      resp.sendRedirect("/");
    } else {
      req.setAttribute("login", user.getLogin());
      req.setAttribute("msg", serviceAnswer.getMessages());
      req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req, resp);
    }
  }
}
