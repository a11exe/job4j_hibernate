package ru.job4j.carprice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@WebServlet("")
public class AdsServlet extends HttpServlet {

  private final AdService adService = AdServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    req.setAttribute("user", req.getSession().getAttribute("loggedUser"));
    req.setAttribute("brands", adService.getAdsByBrandCount());
    req.setAttribute("ads", adService.findAll());
    req.getRequestDispatcher("WEB-INF/views/ads.jsp").forward(req, resp);
  }
}
