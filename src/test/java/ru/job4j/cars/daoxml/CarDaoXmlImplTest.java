package ru.job4j.cars.daoxml;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import java.util.List;
import org.junit.After;
import org.junit.Test;
import ru.job4j.cars.modelxml.CarXml;
import ru.job4j.cars.modelxml.EngineXml;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 16.12.2019
 */
public class CarDaoXmlImplTest {

  private final CarDao carDao = CarDaoImpl.getInstance();
  private final EngineDao engineDao = EngineDaoImpl.getInstance();

  @After
  public void before() {
    carDao.findAll().forEach(carDao::delete);
    engineDao.findAll().forEach(engineDao::delete);
  }

  @Test
  public void create() {
    CarXml car = new CarXml();
    carDao.create(car);
    assertThat(car.getId(), not(0));
  }

  @Test
  public void update() {
    CarXml car = new CarXml();
    EngineXml engine250 = new EngineXml(250);
    engineDao.create(engine250);
    EngineXml engine350 = new EngineXml(350);
    engineDao.create(engine350);
    car.setEngine(engine250);
    carDao.create(car);
    assertThat(car.getId(), not(0));
    car.setEngine(engine350);
    carDao.update(car);
    assertThat(carDao.find(new CarXml(car.getId())).getEngine(), is(engine350));
  }

  @Test
  public void delete() {
    CarXml car = new CarXml();
    carDao.create(car);
    assertThat(carDao.findAll().size(), is(1));
    carDao.delete(car);
    assertThat(carDao.findAll().size(), is(0));
  }

  @Test
  public void find() {
    CarXml car = new CarXml();
    carDao.create(car);
    assertNotNull(carDao.find(new CarXml(car.getId())));
  }

  @Test
  public void findAll() {
    assertThat(carDao.findAll().size(), is(0));
    carDao.create(new CarXml());
    carDao.create(new CarXml());
    List<CarXml> cars = carDao.findAll();
    assertThat(cars.size(), is(2));
  }
}