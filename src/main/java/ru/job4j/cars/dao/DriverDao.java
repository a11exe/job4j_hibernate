package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Driver;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public interface DriverDao {
  
  void create(Driver driver);

  void update(Driver driver);

  void delete(Driver driver);

  Driver find(Driver driver);

  List<Driver> findAll();
  
}
