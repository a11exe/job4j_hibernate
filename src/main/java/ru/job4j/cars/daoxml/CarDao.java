package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.CarXml;

public interface CarDao {

  void create(CarXml car);

  void update(CarXml car);

  void delete(CarXml car);

  CarXml find(CarXml car);

  List<CarXml> findAll();

}
