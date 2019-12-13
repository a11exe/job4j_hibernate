package ru.job4j.cars.modelxml;

import java.util.Objects;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class EngineXml {

  private int id;
  private int power;

  public EngineXml() {
  }

  public EngineXml(int power) {
    this.power = power;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getPower() {
    return power;
  }

  public void setPower(int power) {
    this.power = power;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof EngineXml)) {
      return false;
    }
    EngineXml engineXml = (EngineXml) o;
    return id == engineXml.id;
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

  @Override
  public String toString() {
    return "EngineXml{" +
        "id=" + id +
        ", power=" + power +
        '}';
  }
}
