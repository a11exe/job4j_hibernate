package ru.job4j.cars.daoxml;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertThat;

import org.junit.Before;
import org.junit.Test;
import ru.job4j.cars.modelxml.DriverXml;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class DriverDaoXmlImplTest {

  private final DriverDao driverDao = DriverDaoImpl.getInstance();

  @Before
  public void before() {
    driverDao.findAll().forEach(driverDao::delete);
  }

  @Test
  public void create() {
    DriverXml driver = new DriverXml("Bob");
    driverDao.create(driver);
    assertThat(driver.getId(), not(0));
  }

  @Test
  public void update() {
    DriverXml driver = new DriverXml("Bob");
    driverDao.create(driver);
    int id = driver.getId();
    driver.setName("Mike");
    driverDao.update(driver);
    assertThat(driverDao.find(new DriverXml(id)).getName(), is(driver.getName()));
  }

  @Test
  public void delete() {
    DriverXml driver = new DriverXml("Bob");
    driverDao.create(driver);
    assertThat(driver.getId(), not(0));
    driverDao.delete(driver);
    assertNull(driverDao.find(driver));
  }

  @Test
  public void find() {
    DriverXml driver = new DriverXml("Bob");
    driverDao.create(driver);
    assertNotNull(driverDao.find(new DriverXml(driver.getId())).getName(), is("Bob"));
  }

  @Test
  public void findAll() {
    driverDao.create(new DriverXml("Bob"));
    driverDao.create(new DriverXml("Mike"));
    assertThat(driverDao.findAll().size(), is(2));
  }
}