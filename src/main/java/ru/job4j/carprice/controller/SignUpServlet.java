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
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {

  private final UserService userService = UserServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    req.getRequestDispatcher("WEB-INF/views/signup.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    User user = new User();
    user.setName(req.getParameter("name"));
    user.setLogin(req.getParameter("login"));
    user.setEmail(req.getParameter("email"));
    user.setPhone(req.getParameter("phone"));
    user.setPassword(req.getParameter("password"));

    ServiceAnswer<User> serviceAnswer = userService.signUp(user);

    if (serviceAnswer.isNoErrors()) {
      HttpSession session = req.getSession();
      session.setAttribute("loggedUser", serviceAnswer.getValue());
      resp.sendRedirect("/login");
    } else {
      req.setAttribute("user", user);
      req.setAttribute("msg", serviceAnswer.getMessages());
      req.getRequestDispatcher("WEB-INF/views/signup.jsp").forward(req, resp);
    }

  }
}
