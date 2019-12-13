package ru.job4j.cars.model;

import java.util.Objects;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
@Entity
@Table(name = "car")
public class Car {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id", unique = true, nullable = false)
  private int id;

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "engine_id")
  private Engine engine;

  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "history_owner", joinColumns = {
      @JoinColumn(name = "driver_id", nullable = false, updatable = false) },
      inverseJoinColumns = { @JoinColumn(name = "car_id",
          nullable = false, updatable = false) })
  private Set<Driver> drivers;

  public Car() {
  }

  public Car(int id) {
    this.id = id;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public Engine getEngine() {
    return engine;
  }

  public void setEngine(Engine engine) {
    this.engine = engine;
  }

  public Set<Driver> getDrivers() {
    return drivers;
  }

  public void setDrivers(Set<Driver> drivers) {
    this.drivers = drivers;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof Car)) {
      return false;
    }
    Car car = (Car) o;
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
