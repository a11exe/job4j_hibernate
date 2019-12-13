package ru.job4j.cars.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import java.util.List;
import org.junit.After;
import org.junit.Test;
import ru.job4j.cars.model.Car;
import ru.job4j.cars.model.Engine;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 16.12.2019
 */
public class CarDaoImplTest {

  private final CarDao carDao = CarDaoImpl.getInstance();
  private final EngineDao engineDao = EngineDaoImpl.getInstance();

  @After
  public void before() {
    carDao.findAll().forEach(carDao::delete);
    engineDao.findAll().forEach(engineDao::delete);
  }

  @Test
  public void create() {
    Car car = new Car();
    carDao.create(car);
    assertThat(car.getId(), not(0));
  }

  @Test
  public void update() {
    Car car = new Car();
    Engine engine250 = new Engine(250);
    engineDao.create(engine250);
    Engine engine350 = new Engine(350);
    engineDao.create(engine350);
    car.setEngine(engine250);
    carDao.create(car);
    assertThat(car.getId(), not(0));
    car.setEngine(engine350);
    carDao.update(car);
    assertThat(carDao.find(new Car(car.getId())).getEngine(), is(engine350));
  }

  @Test
  public void delete() {
    Car car = new Car();
    carDao.create(car);
    assertThat(carDao.findAll().size(), is(1));
    carDao.delete(car);
    assertThat(carDao.findAll().size(), is(0));
  }

  @Test
  public void find() {
    Car car = new Car();
    carDao.create(car);
    assertNotNull(carDao.find(new Car(car.getId())));
  }

  @Test
  public void findAll() {
    assertThat(carDao.findAll().size(), is(0));
    carDao.create(new Car());
    carDao.create(new Car());
    List<Car> cars = carDao.findAll();
    assertThat(cars.size(), is(2));
  }
}