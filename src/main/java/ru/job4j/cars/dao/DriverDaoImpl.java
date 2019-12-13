package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Driver;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class DriverDaoImpl extends AbstractDao implements DriverDao {

  private final static DriverDao INSTANCE = new DriverDaoImpl();

  private DriverDaoImpl() {
  }

  public static DriverDao getInstance() {
    return INSTANCE;
  }

  @Override
  public void create(Driver driver) {
    this.tx(session -> {
      session.save(driver);
      return driver;
    });
  }

  @Override
  public void update(Driver driver) {
    this.tx(session -> {
      session.update(driver);
      return driver;
    });
  }

  @Override
  public void delete(Driver driver) {
    this.tx(session -> {
      session.delete(driver);
      return driver;
    });
  }

  @Override
  public Driver find(final Driver driver) {
    return this.tx(session -> session.get(Driver.class, driver.getId()));
  }

  @Override
  public List<Driver> findAll() {
    return this.tx(session -> session.createQuery("FROM Driver", Driver.class).getResultList());
  }
}
