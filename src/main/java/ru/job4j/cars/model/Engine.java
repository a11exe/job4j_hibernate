package ru.job4j.cars.model;

import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
@Entity
@Table(name = "engine")
public class Engine {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", unique = true, nullable = false)
  private int id;

  @Column(name = "power")
  private int power;

  public Engine() {
  }

  public Engine(int power) {
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
    if (!(o instanceof Engine)) {
      return false;
    }
    Engine engine = (Engine) o;
    return id == engine.id;
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
