package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.DriverXml;

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
  public void create(DriverXml driver) {
    this.tx(session -> {
      session.save(driver);
      return driver;
    });
  }

  @Override
  public void update(DriverXml driver) {
    this.tx(session -> {
      session.update(driver);
      return driver;
    });
  }

  @Override
  public void delete(DriverXml driver) {
    this.tx(session -> {
      session.delete(driver);
      return driver;
    });
  }

  @Override
  public DriverXml find(final DriverXml driver) {
    return this.tx(session -> session.get(DriverXml.class, driver.getId()));
  }

  @Override
  public List<DriverXml> findAll() {
    return this.tx(session -> session.createQuery("FROM DriverXml", DriverXml.class).getResultList());
  }
}
