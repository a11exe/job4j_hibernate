package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Car;

public interface CarDao {

  void create(Car car);

  void update(Car car);

  void delete(Car car);

  Car find(Car car);

  List<Car> findAll();

}
