package ru.job4j.carprice.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.BodyType;
import ru.job4j.carprice.model.Car;
import ru.job4j.carprice.model.Condition;
import ru.job4j.carprice.model.EngineType;
import ru.job4j.carprice.model.Model;
import ru.job4j.carprice.model.Status;
import ru.job4j.carprice.model.Transmission;
import ru.job4j.carprice.model.User;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;
import ru.job4j.carprice.service.BaseService;
import ru.job4j.carprice.service.BaseServiceImpl;
import ru.job4j.carprice.service.ModelService;
import ru.job4j.carprice.service.ModelServiceImpl;
import ru.job4j.carprice.service.PhotoService;
import ru.job4j.carprice.service.PhotoServiceImpl;
import ru.job4j.carprice.service.ServiceAnswer;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@WebServlet("/edit")
public class AdEditServlet extends HttpServlet {

  private final BaseService baseService = BaseServiceImpl.getInstance();
  private final AdService adService = AdServiceImpl.getInstance();
  private final ModelService modelService = ModelServiceImpl.getInstance();
  private final PhotoService photoService = PhotoServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    int adId = Integer.parseInt(req.getParameter("id"));
    Ad ad = new Ad();
    ad.setId(adId);
    ad = adService.find(ad);
    User loggedUser = (User) req.getSession().getAttribute("loggedUser");
    if (!ad.getUser().equals(loggedUser)) {
      resp.sendRedirect("/");
    } else {
      List<Model> models = modelService.findAll();

      req.setAttribute("ad", ad);
      req.setAttribute("brands", models.stream().map(o -> o.getBrand()).collect(Collectors.toSet()));
      req.setAttribute("models", models);
      req.setAttribute("bodytypes", Arrays
          .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("conditions", Arrays
          .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("engineTypes", Arrays
          .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("transmissions", Arrays
          .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("statuses", Arrays
          .stream(Status.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.getRequestDispatcher("WEB-INF/views/ad.jsp").forward(req, resp);
    }
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    Ad ad = new Ad();
    ad.setId(Integer.parseInt(req.getParameter("id")));
    ad.setStatus(Status.ACTIVE);
    ad.setPrice(new BigDecimal(req.getParameter("price")));
    String status = req.getParameter("status");
    ad.setStatus(baseService.isValidEnum(Status.class, status) ? Status.valueOf(status) : null);
    Car car = new Car();
    car.setId(Integer.parseInt(req.getParameter("carId")));
    Model model = new Model();
    model.setId(baseService.getInt(req.getParameter("model")));
    model = modelService.load(model);
    car.setModel(model);
    car.setYear(baseService.getInt(req.getParameter("year")));
    String bodyType = req.getParameter("bodytype");
    car.setBodyType(baseService.isValidEnum(BodyType.class, bodyType) ? BodyType.valueOf(bodyType) : null);
    String condition = req.getParameter("condition");
    car.setCondition(baseService.isValidEnum(Condition.class, condition) ? Condition.valueOf(condition) : null);
    String engineType = req.getParameter("enginetype");
    car.setEngineType(baseService.isValidEnum(EngineType.class, engineType) ? EngineType.valueOf(engineType) : null);
    String transmission = req.getParameter("transmission");
    car.setTransmission(baseService.isValidEnum(Transmission.class, transmission) ? Transmission.valueOf(transmission) : null);
    ad.setCar(car);

    User loggedUser = (User) req.getSession().getAttribute("loggedUser");
    ServiceAnswer<Ad> serviceAnswer = adService.update(ad, loggedUser);

    if (serviceAnswer.isNoErrors()) {
      req.setAttribute("id", serviceAnswer.getValue().getId());
      req.setAttribute("photos", photoService.findByAd(serviceAnswer.getValue()));
      req.getRequestDispatcher("WEB-INF/views/fileupload.jsp").forward(req, resp);
    } else {
      req.setAttribute("msg", serviceAnswer.getMessages());
      List<Model> models = modelService.findAll();

      req.setAttribute("brands", models.stream().map(o->o.getBrand()).collect(Collectors.toSet()));
      req.setAttribute("models", models);
      req.setAttribute("bodytypes", Arrays
          .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("conditions", Arrays
          .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("engineTypes", Arrays
          .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("transmissions", Arrays
          .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.setAttribute("statuses", Arrays
          .stream(Status.values()).map(b -> b.name()).collect(Collectors.toList()));
      req.getRequestDispatcher("WEB-INF/views/ad.jsp").forward(req, resp);
    }

  }
}
