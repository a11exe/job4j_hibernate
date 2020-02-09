package ru.job4j.carprice.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.job4j.carprice.dao.AdDao;
import ru.job4j.carprice.dao.BrandDao;
import ru.job4j.carprice.dao.Filter;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.User;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@Component
public class AdServiceImpl implements AdService {

  private static final Logger LOG = LogManager.getLogger(AdServiceImpl.class);

  @Autowired
  private AdDao adDao;

  @Autowired
  private BrandDao brandDao;

  @Override
  public ServiceAnswer<Ad> save(Ad ad) {
    ServiceAnswer<Ad> serviceAnswer = validate(ad);
    if (serviceAnswer.isNoErrors()) {
      ad.setDate(LocalDateTime.now());
      adDao.save(ad);
      serviceAnswer.setValue(ad);
    }
    return serviceAnswer;
  }

  @Override
  public ServiceAnswer<Ad> update(Ad ad, User loggedUser) {
    ServiceAnswer<Ad> serviceAnswer = validate(ad);
    Ad adDb = adDao.find(ad);
    if (adDb.getUser().equals(loggedUser)) {
        ad.setUser(loggedUser);
      if (serviceAnswer.isNoErrors()) {
        adDao.update(ad);
        serviceAnswer.setValue(ad);
      }
    } else {
      serviceAnswer.setNoErrors(false);
    }
    return serviceAnswer;
  }

  @Override
  public ServiceAnswer<Ad> validate(Ad ad) {
    ServiceAnswer<Ad> serviceAnswer = new ServiceAnswer<>(false, new HashMap<>());

    if (ad.getCar() == null || (ad.getCar().getModel() == null || ad.getCar().getModel().getId() == 0)) {
      serviceAnswer.getMessages().put("model", "Model is empty");
      LOG.info("Error validation Model is empty");
    }
    if (ad.getPrice() == null || ad.getPrice().compareTo(new BigDecimal(1)) < 0) {
      serviceAnswer.getMessages().put("price", "Price is empty");
      LOG.info("Error validation Price is empty");
    }
    if (ad.getCar() == null || ad.getCar().getYear() == null) {
      serviceAnswer.getMessages().put("year", "Year is empty");
      LOG.info("Error validation Year is empty");
    }
    if (ad.getCar() == null || ad.getCar().getBodyType() == null) {
      serviceAnswer.getMessages().put("bodytype", "Body type is empty");
      LOG.info("Error validation Body type is empty");
    }
    if (ad.getCar() == null || ad.getCar().getCondition() == null) {
      serviceAnswer.getMessages().put("condition", "Condition type is empty");
      LOG.info("Error validation Condition type is empty");
    }
    if (ad.getCar() == null || ad.getCar().getEngineType() == null) {
      serviceAnswer.getMessages().put("enginetype", "Engine type type is empty");
      LOG.info("Error validation Engine type is empty");
    }
    if (ad.getCar() == null || ad.getCar().getTransmission() == null) {
      serviceAnswer.getMessages().put("transmission", "Transmission type is empty");
      LOG.info("Error validation Transmission type is empty");
    }
    serviceAnswer.setNoErrors(serviceAnswer.getMessages().size() == 0);

    return serviceAnswer;
  }

  @Override
  public List<Ad> findAll() {
    return adDao.findAll();
  }

  @Override
  public Set<Ad> findByUser(User user) {
    return adDao.findByUser(user);
  }

  @Override
  public Ad find(Ad ad) {
    return adDao.find(ad);
  }

  @Override
  public Ad load(Ad ad) {
    return adDao.load(ad);
  }

  @Override
  public void delete(Ad ad) {
    adDao.delete(ad);
  }

  @Override
  public Map<Brand, Integer> getAdsByBrandCount() {

    List<Brand> brands = brandDao.findAll();
    Map<Brand, Long> counted = adDao.findAll().stream()
        .map(o -> o.getCar().getModel().getBrand())
        .collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));

    Map<Brand, Integer> brandsCount = new HashMap<>();
    brands.forEach(b -> brandsCount.put(b, counted.containsKey(b) ? counted.get(b).intValue() : 0));

    return brandsCount;
  }

  @Override
  public List<Ad> findByBrand(Brand brand) {
    return adDao.findByBrand(brand);
  }

  @Override
  public List<Ad> findByFilter(Filter filter) {
    return adDao.findByFilter(filter);
  }
}
