package ru.job4j.carprice.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.model.BodyType;
import ru.job4j.carprice.model.Car;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class CarsDaoImplTest extends BaseTest {

  @Autowired
  private CarsDao carDao;

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void save() {
    Car car = new Car();
    carDao.save(car);
    assertThat(car.getId(), not(0));
    carDao.delete(car);
  }

  @Test
  public void update() {
    Car car = new Car();
    carDao.save(car);
    assertThat(car.getId(), not(0));
    car.setBodyType(BodyType.CABRIOLET);
    carDao.update(car);
    Car updated = new Car();
    updated.setId(car.getId());
    assertThat(carDao.find(updated).getBodyType(), is(BodyType.CABRIOLET));
    carDao.delete(car);
  }

  @Test
  public void findAll() {
    Car car = new Car();
    Car car2 = new Car();
    carDao.save(car);
    carDao.save(car2);
    assertThat(carDao.findAll().size(), is(2));
    carDao.delete(car);
    carDao.delete(car2);
  }

  @Test
  public void find() {
    Car ad = new Car();
    carDao.save(ad);
    assertThat(ad.getId(), not(0));
    carDao.update(ad);
    Car finded = new Car();
    finded.setId(ad.getId());
    assertNotNull(carDao.find(finded));
    carDao.delete(ad);
  }

  @Test
  public void delete() {
    Car ad = new Car();
    carDao.save(ad);
    assertThat(carDao.findAll().size(), is(1));
    carDao.delete(ad);
    assertThat(carDao.findAll().size(), is(0));
  }
}