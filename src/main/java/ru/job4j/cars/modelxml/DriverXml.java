package ru.job4j.cars.modelxml;

import java.util.Objects;
import java.util.Set;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class DriverXml {

  private int id;
  private String name;
  private Set<CarXml> cars;

  public DriverXml() {
  }

  public DriverXml(int id) {
    this.id = id;
  }

  public DriverXml(String name) {
    this.name = name;
  }

  public DriverXml(int id, String name) {
    this.id = id;
    this.name = name;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Set<CarXml> getCars() {
    return cars;
  }

  public void setCars(Set<CarXml> cars) {
    this.cars = cars;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof DriverXml)) {
      return false;
    }
    DriverXml driverXml = (DriverXml) o;
    return id == driverXml.id;
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

  @Override
  public String toString() {
    return "DriverXml{" +
        "id=" + id +
        ", name='" + name + '\'' +
        ", cars=" + cars +
        '}';
  }
}
