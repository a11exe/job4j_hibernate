package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.CarXml;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class CarDaoImpl extends AbstractDao implements CarDao {

  private final static CarDao INSTANCE = new CarDaoImpl();

  private CarDaoImpl() {
  }

  public static CarDao getInstance() {
    return INSTANCE;
  }

  @Override
  public void create(CarXml car) {
    this.tx(session -> {
      session.save(car);
      return car;
    });
  }

  @Override
  public void update(CarXml car) {
    this.tx(session -> {
      session.update(car);
      return car;
    });
  }

  @Override
  public void delete(CarXml car) {
    this.tx(session -> {
      session.delete(car);
      return car;
    });
  }

  @Override
  public CarXml find(CarXml car) {
    return this.tx(session -> session.get(CarXml.class, car.getId()));
  }

  @Override
  public List<CarXml> findAll() {
    return this.tx(session -> session.createQuery("FROM CarXml", CarXml.class).getResultList());
  }
}
