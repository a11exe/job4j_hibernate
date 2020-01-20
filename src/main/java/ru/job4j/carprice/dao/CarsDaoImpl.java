package ru.job4j.carprice.dao;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Car;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class CarsDaoImpl extends AbstractDao implements CarsDao {

  private static final Logger LOG = LogManager.getLogger(CarsDaoImpl.class);

  private final static CarsDao INSTANCE = new CarsDaoImpl();

  private CarsDaoImpl() {
  }

  public static CarsDao getInstance() {
    return INSTANCE;
  }


  @Override
  public void save(Car car) {
    super.save(car);
  }

  @Override
  public void update(Car car) {
    super.update(car);
  }

  @Override
  public List<Car> findAll() {
    return super.findAll("Car");
  }

  @Override
  public Car find(Car car) {
    return super.find(Car.class, car.getId());
  }

  @Override
  public void delete(Car car) {
    super.delete(car);
  }
}
