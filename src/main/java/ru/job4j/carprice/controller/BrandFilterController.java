package ru.job4j.carprice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;
import ru.job4j.carprice.service.BrandService;
import ru.job4j.carprice.service.BrandServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 20.01.2020
 */
@WebServlet("/brand")
public class BrandFilterController extends HttpServlet {

  private final AdService adService = AdServiceImpl.getInstance();
  private final BrandService brandService = BrandServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    String brandName = req.getParameter("name");

    req.setAttribute("user", req.getSession().getAttribute("loggedUser"));
    req.setAttribute("brandsMap", adService.getAdsByBrandCount());
    Brand brand = brandService.findByName(brandName);
    req.setAttribute("ads", adService.findByBrand(brand));
    req.getRequestDispatcher("WEB-INF/views/ads.jsp").forward(req, resp);

  }

}
