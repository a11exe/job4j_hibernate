package ru.job4j.cars.modelxml;

import java.util.Objects;
import java.util.Set;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */

public class CarXml {

  private int id;
  private EngineXml engine;
  private Set<DriverXml> drivers;

  public CarXml() {
  }

  public CarXml(int id) {
    this.id = id;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public EngineXml getEngine() {
    return engine;
  }

  public void setEngine(EngineXml engine) {
    this.engine = engine;
  }

  public Set<DriverXml> getDrivers() {
    return drivers;
  }

  public void setDrivers(Set<DriverXml> drivers) {
    this.drivers = drivers;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof CarXml)) {
      return false;
    }
    CarXml car = (CarXml) o;
    return id == car.id;
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

  @Override
  public String toString() {
    return "CarXml{" +
        "id=" + id +
        ", engine=" + engine +
        ", drivers=" + drivers +
        '}';
  }
}
