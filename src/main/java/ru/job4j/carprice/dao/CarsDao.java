package ru.job4j.carprice.dao;

import java.util.List;
import ru.job4j.carprice.model.Car;

public interface CarsDao {

  void save(Car car);

  void update(Car car);

  List<Car> findAll();

  Car find(Car car);

  void delete(Car car);

}
