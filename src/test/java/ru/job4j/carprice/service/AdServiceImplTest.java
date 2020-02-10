package ru.job4j.carprice.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.core.IsNot.not;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import java.math.BigDecimal;
import java.util.Map;
import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.dao.BaseTest;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.BodyType;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Car;
import ru.job4j.carprice.model.Condition;
import ru.job4j.carprice.model.EngineType;
import ru.job4j.carprice.model.Model;
import ru.job4j.carprice.model.Transmission;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.01.2020
 */
public class AdServiceImplTest extends BaseTest {

  @Autowired
  private AdService adService;
  private ModelService modelService;
  private BrandService brandService;

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void whenFieldsCorrectThanAdSaved() {
    Ad ad = new Ad();
    Car car = new Car();
    car.setYear(1985);
    car.setTransmission(Transmission.AUTO);
    car.setEngineType(EngineType.DIESEL);
    car.setBodyType(BodyType.COUPE);
    car.setCondition(Condition.DAMAGED);
    Model model = new Model();
    model.setId(2L);
    car.setModel(modelService.load(model));
    ad.setPrice(BigDecimal.ONE);
    ad.setCar(car);
    adService.save(ad);
    assertThat(ad.getId(), not(0));
    adService.delete(ad);
  }

  @Test
  public void whenFieldsNotCorrectThanUserDoesntSaved() {
    Ad ad = new Ad();
    Car car = new Car();
    car.setYear(1985);
    car.setTransmission(Transmission.AUTO);
    car.setEngineType(EngineType.DIESEL);
    car.setBodyType(BodyType.COUPE);
    car.setCondition(Condition.DAMAGED);
    ad.setPrice(BigDecimal.ONE);
    ad.setCar(car);
    adService.save(ad);
    assertThat(adService.findAll().size(), is(0));
  }

  @Test
  public void whenFieldsCorrectThanNoErrors() {
    Ad ad = new Ad();
    Car car = new Car();
    car.setYear(1985);
    car.setTransmission(Transmission.AUTO);
    car.setEngineType(EngineType.DIESEL);
    car.setBodyType(BodyType.COUPE);
    car.setCondition(Condition.DAMAGED);
    Model model = new Model();
    model.setId(2L);
    car.setModel(modelService.load(model));
    ad.setPrice(BigDecimal.ONE);
    ad.setCar(car);
    ServiceAnswer<Ad> adServiceAnswer = adService.validate(ad);
    assertTrue(adServiceAnswer.isNoErrors());
  }

  @Test
  public void whenFieldsNotCorrectThanHasErrors() {
    Ad ad = new Ad();
    Car car = new Car();
    car.setYear(1985);
    car.setTransmission(Transmission.AUTO);
    car.setEngineType(EngineType.DIESEL);
    car.setBodyType(BodyType.COUPE);
    car.setCondition(Condition.DAMAGED);
    Model model = new Model();
    model.setId(2L);
    car.setModel(modelService.load(model));
    ad.setCar(car);
    ServiceAnswer<Ad> adServiceAnswer = adService.validate(ad);
    assertFalse(adServiceAnswer.isNoErrors());
  }

  @Test
  public void whenEmptyAdThanHasErrors() {
    Ad ad = new Ad();
    ServiceAnswer<Ad> adServiceAnswer = adService.validate(ad);
    assertFalse(adServiceAnswer.isNoErrors());
  }

  @Test
  public void getAdsByBrandCount() {
    Ad ad = new Ad();
    Car car = new Car();
    car.setYear(1985);
    car.setTransmission(Transmission.AUTO);
    car.setEngineType(EngineType.DIESEL);
    car.setBodyType(BodyType.COUPE);
    car.setCondition(Condition.DAMAGED);
    Model model = new Model();
    model.setId(145L);
    model = modelService.find(model);
    car.setModel(model);
    ad.setPrice(BigDecimal.ONE);
    ad.setCar(car);
    adService.save(ad);
    assertThat(ad.getId(), not(0));
    Map<Brand, Integer> adsByBrandCount = adService.getAdsByBrandCount();

    assertThat(adsByBrandCount.get(model.getBrand()), is(1));
    Brand brand = new Brand();
    brand.setId(5L);
    brand = brandService.find(brand);
    assertThat(adsByBrandCount.get(brand), is(0));
    adService.delete(ad);
  }
}