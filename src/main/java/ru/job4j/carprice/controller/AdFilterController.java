package ru.job4j.carprice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.job4j.carprice.dao.Filter;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;
import ru.job4j.carprice.service.BrandService;
import ru.job4j.carprice.service.BrandServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 20.01.2020
 */
@WebServlet("/adfilter")
public class AdFilterController extends HttpServlet {

  private final AdService adService = AdServiceImpl.getInstance();
  private final BrandService brandService = BrandServiceImpl.getInstance();

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    String brandName = req.getParameter("brand");
    if (brandName.equals("Choose brand...")) {
      brandName = null;
    }
    boolean hasPhoto = (req.getParameter("hasPhoto") != null);
    boolean lastDay = (req.getParameter("lastDay") != null);

    req.setAttribute("user", req.getSession().getAttribute("loggedUser"));
    req.setAttribute("brandsMap", adService.getAdsByBrandCount());
    req.setAttribute("ads", adService.findByFilter(new Filter(brandName, hasPhoto, lastDay)));

    req.setAttribute("brandName", brandName);
    req.setAttribute("hasPhoto", hasPhoto);
    req.setAttribute("lastDay", lastDay);

    req.getRequestDispatcher("WEB-INF/views/ads.jsp").forward(req, resp);

  }

}
