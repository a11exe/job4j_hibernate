package ru.job4j.cars.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertThat;

import org.junit.Before;
import org.junit.Test;
import ru.job4j.cars.model.Driver;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class DriverDaoImplTest {

  private final DriverDao driverDao = DriverDaoImpl.getInstance();

  @Before
  public void before() {
    driverDao.findAll().forEach(driverDao::delete);
  }

  @Test
  public void create() {
    Driver driver = new Driver("Bob");
    driverDao.create(driver);
    assertThat(driver.getId(), not(0));
  }

  @Test
  public void update() {
    Driver driver = new Driver("Bob");
    driverDao.create(driver);
    int id = driver.getId();
    driver.setName("Mike");
    driverDao.update(driver);
    assertThat(driverDao.find(new Driver(id)).getName(), is(driver.getName()));
  }

  @Test
  public void delete() {
    Driver driver = new Driver("Bob");
    driverDao.create(driver);
    assertThat(driver.getId(), not(0));
    driverDao.delete(driver);
    assertNull(driverDao.find(driver));
  }

  @Test
  public void find() {
    Driver driver = new Driver("Bob");
    driverDao.create(driver);
    assertNotNull(driverDao.find(new Driver(driver.getId())).getName(), is("Bob"));
  }

  @Test
  public void findAll() {
    driverDao.create(new Driver("Bob"));
    driverDao.create(new Driver("Mike"));
    assertThat(driverDao.findAll().size(), is(2));
  }
}