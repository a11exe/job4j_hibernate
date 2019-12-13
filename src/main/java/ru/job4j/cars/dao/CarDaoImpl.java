package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Car;

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
  public void create(Car car) {
    this.tx(session -> {
      session.save(car);
      return car;
    });
  }

  @Override
  public void update(Car car) {
    this.tx(session -> {
      session.update(car);
      return car;
    });
  }

  @Override
  public void delete(Car car) {
    this.tx(session -> {
      session.delete(car);
      return car;
    });
  }

  @Override
  public Car find(Car car) {
    return this.tx(session -> session.get(Car.class, car.getId()));
  }

  @Override
  public List<Car> findAll() {
    return this.tx(session -> session.createQuery("FROM Car", Car.class).getResultList());
  }
}
