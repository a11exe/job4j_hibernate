package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.DriverXml;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public interface DriverDao {
  
  void create(DriverXml driver);

  void update(DriverXml driver);

  void delete(DriverXml driver);

  DriverXml find(DriverXml driver);

  List<DriverXml> findAll();
  
}
