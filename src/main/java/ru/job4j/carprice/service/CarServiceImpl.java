package ru.job4j.carprice.service;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.dao.CarsDao;
import ru.job4j.carprice.dao.CarsDaoImpl;
import ru.job4j.carprice.model.Car;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
public class CarServiceImpl implements CarService {

  private static final Logger LOG = LogManager.getLogger(CarServiceImpl.class);
  private final CarsDao carsDao = CarsDaoImpl.getInstance();

  private final static CarService INSTANCE = new CarServiceImpl();

  public static CarService getInstance() {
    return INSTANCE;
  }

  private CarServiceImpl() {
  }

  @Override
  public void save(Car car) {
    carsDao.save(car);
  }

  @Override
  public void update(Car car) {
    carsDao.update(car);
  }

  @Override
  public List<Car> findAll() {
    return carsDao.findAll();
  }

  @Override
  public Car find(Car car) {
    return carsDao.find(car);
  }

  @Override
  public void delete(Car car) {
    carsDao.delete(car);
  }
}
