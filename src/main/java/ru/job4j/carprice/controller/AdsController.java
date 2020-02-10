package ru.job4j.carprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ru.job4j.carprice.dao.Filter;
import ru.job4j.carprice.model.*;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.BaseService;
import ru.job4j.carprice.service.BrandService;
import ru.job4j.carprice.service.ModelService;
import ru.job4j.carprice.service.PhotoService;
import ru.job4j.carprice.service.ServiceAnswer;
import ru.job4j.carprice.util.SecurityUtil;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@Controller
public class AdsController {

  @Autowired
  private AdService adService;
  @Autowired
  private BaseService baseService;
  @Autowired
  private ModelService modelService;
  @Autowired
  private PhotoService photoService;
  @Autowired
  private BrandService brandService;

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String root() {
    return "redirect:ads";
  }

  @GetMapping("/ads")
  public String ads(Model model) {
    model.addAttribute("user", SecurityUtil.getLoggedUser());
    model.addAttribute("brandsMap", adService.getAdsByBrandCount());
    model.addAttribute("ads", adService.findAll());
    return "ads";
  }

  @GetMapping("/new")
  public String adForm(Model model) {
    List<ru.job4j.carprice.model.Model> models = modelService.findAll();

    Car car = new Car();
    car.setYear(LocalDate.now().getYear());
    Ad ad = new Ad();
    ad.setCar(car);
    ad.setPrice(new BigDecimal(1));
    model.addAttribute("ad", ad);
    model.addAttribute("brands", models.stream().map(o->o.getBrand()).collect(Collectors.toSet()));
    model.addAttribute("models", models);
    model.addAttribute("bodytypes", Arrays
            .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
    model.addAttribute("conditions", Arrays
            .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
    model.addAttribute("engineTypes", Arrays
            .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
    model.addAttribute("transmissions", Arrays
            .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));

    return "ad";

  }

  @PostMapping("/new")
  public String addAd(
          Ad ad,
          @RequestParam Map<String, String> parameters,
          Model model) {

    ad.setUser(SecurityUtil.getLoggedUser());
    ad.setStatus(Status.ACTIVE);

    Car car = new Car();
    ru.job4j.carprice.model.Model modelCar = new ru.job4j.carprice.model.Model();
    modelCar.setId(baseService.getLong(parameters.get("model")));
    modelCar = modelService.find(modelCar);
    car.setModel(modelCar);

    car.setYear(baseService.getInt(parameters.get("year")));
    String bodyType = parameters.get("bodytype");
    car.setBodyType(baseService.isValidEnum(BodyType.class, bodyType) ? BodyType.valueOf(bodyType) : null);
    String condition = parameters.get("condition");
    car.setCondition(baseService.isValidEnum(Condition.class, condition) ? Condition.valueOf(condition) : null);
    String engineType = parameters.get("enginetype");
    car.setEngineType(baseService.isValidEnum(EngineType.class, engineType) ? EngineType.valueOf(engineType) : null);
    String transmission = parameters.get("transmission");
    car.setTransmission(baseService.isValidEnum(Transmission.class, transmission) ? Transmission.valueOf(transmission) : null);
    ad.setCar(car);

    ServiceAnswer<Ad> serviceAnswer = adService.save(ad);

    if (serviceAnswer.isNoErrors()) {
      model.addAttribute("id", serviceAnswer.getValue().getId());
      return "fileupload";
    } else {
      model.addAttribute("ad", ad);
      model.addAttribute("msg", serviceAnswer.getMessages());
      List<ru.job4j.carprice.model.Model> models = modelService.findAll();

      model.addAttribute("brands", models.stream().map(o->o.getBrand()).collect(Collectors.toSet()));
      model.addAttribute("models", models);
      model.addAttribute("bodytypes", Arrays
              .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("conditions", Arrays
              .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("engineTypes", Arrays
              .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("transmissions", Arrays
              .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));
      return "ad";
    }

  }

  @GetMapping("/edit")
  public String editAdForm(Ad ad, Model model) {
    ad = adService.find(ad);

    User loggedUser = SecurityUtil.getLoggedUser();
    if (!ad.getUser().equals(loggedUser)) {
      return "redirect:ads";
    } else {
      List<ru.job4j.carprice.model.Model> models = modelService.findAll();

      model.addAttribute("ad", ad);
      model.addAttribute("brands", models.stream().map(o -> o.getBrand()).collect(Collectors.toSet()));
      model.addAttribute("models", models);
      model.addAttribute("bodytypes", Arrays
              .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("conditions", Arrays
              .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("engineTypes", Arrays
              .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("transmissions", Arrays
              .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("statuses", Arrays
              .stream(Status.values()).map(b -> b.name()).collect(Collectors.toList()));
      return "ad";
    }
  }

  @PostMapping("/edit")
  public String editAd(
          Ad ad,
          @RequestParam Map<String, String> parameters,
          Model model) {

    ad.setStatus(Status.ACTIVE);
    String status = parameters.get("status");
    ad.setStatus(baseService.isValidEnum(Status.class, status) ? Status.valueOf(status) : null);
    Car car = new Car();
    car.setId(Long.parseLong(parameters.get("carId")));
    ru.job4j.carprice.model.Model modelCar = new ru.job4j.carprice.model.Model();
    modelCar.setId(baseService.getLong(parameters.get("model")));
    modelCar = modelService.load(modelCar);
    car.setModel(modelCar);
    car.setYear(baseService.getInt(parameters.get("year")));
    String bodyType = parameters.get("bodytype");
    car.setBodyType(baseService.isValidEnum(BodyType.class, bodyType) ? BodyType.valueOf(bodyType) : null);
    String condition = parameters.get("condition");
    car.setCondition(baseService.isValidEnum(Condition.class, condition) ? Condition.valueOf(condition) : null);
    String engineType = parameters.get("enginetype");
    car.setEngineType(baseService.isValidEnum(EngineType.class, engineType) ? EngineType.valueOf(engineType) : null);
    String transmission = parameters.get("transmission");
    car.setTransmission(baseService.isValidEnum(Transmission.class, transmission) ? Transmission.valueOf(transmission) : null);
    ad.setCar(car);

    User loggedUser = SecurityUtil.getLoggedUser();
    ServiceAnswer<Ad> serviceAnswer = adService.update(ad, loggedUser);

    if (serviceAnswer.isNoErrors()) {
      model.addAttribute("id", serviceAnswer.getValue().getId());
      model.addAttribute("photos", photoService.findByAd(serviceAnswer.getValue()));
      return "fileupload";
    } else {
      model.addAttribute("msg", serviceAnswer.getMessages());
      List<ru.job4j.carprice.model.Model> models = modelService.findAll();

      model.addAttribute("brands", models.stream().map(o->o.getBrand()).collect(Collectors.toSet()));
      model.addAttribute("models", models);
      model.addAttribute("bodytypes", Arrays
              .stream(BodyType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("conditions", Arrays
              .stream(Condition.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("engineTypes", Arrays
              .stream(EngineType.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("transmissions", Arrays
              .stream(Transmission.values()).map(b -> b.name()).collect(Collectors.toList()));
      model.addAttribute("statuses", Arrays
              .stream(Status.values()).map(b -> b.name()).collect(Collectors.toList()));
      return "ad";
    }

  }

  @PostMapping("/adfilter")
  public String adFilter(
          @RequestParam(required = false, name = "brand") String brandName,
          @RequestParam(required = false, name = "hasPhoto") String hasPhotoParam,
          @RequestParam(required = false, name = "lastDay") String lastDayParam,
          Model model) {

    if ("Choose brand...".equals(brandName)) {
      brandName = null;
    }
    boolean hasPhoto = (hasPhotoParam != null);
    boolean lastDay = (lastDayParam != null);

    model.addAttribute("user", SecurityUtil.getLoggedUser());
    model.addAttribute("brandsMap", adService.getAdsByBrandCount());
    model.addAttribute("ads", adService.findByFilter(new Filter(brandName, hasPhoto, lastDay)));

    model.addAttribute("brandName", brandName);
    model.addAttribute("hasPhoto", hasPhoto);
    model.addAttribute("lastDay", lastDay);

    return "ads";

  }

  @GetMapping("/brand")
  public String brand(
          @RequestParam("name") String brandName,
          Model model) {

    model.addAttribute("user", SecurityUtil.getLoggedUser());
    model.addAttribute("brandsMap", adService.getAdsByBrandCount());
    Brand brand = brandService.findByName(brandName);
    model.addAttribute("ads", adService.findByBrand(brand));
    return "ads";
  }

}
