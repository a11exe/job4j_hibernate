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
import javax.persistence.Table;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
@Entity
@Table(name = "driver")
public class Driver {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id")
  private int id;

  @Column(name = "name")
  private String name;

  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "history_owner", joinColumns = {
      @JoinColumn(name = "car_id", nullable = false, updatable = false) },
      inverseJoinColumns = { @JoinColumn(name = "driver_id",
          nullable = false, updatable = false) })
  private Set<Car> cars;

  public Driver() {
  }

  public Driver(int id) {
    this.id = id;
  }

  public Driver(String name) {
    this.name = name;
  }

  public Driver(int id, String name) {
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

  public Set<Car> getCars() {
    return cars;
  }

  public void setCars(Set<Car> cars) {
    this.cars = cars;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof Driver)) {
      return false;
    }
    Driver driver = (Driver) o;
    return id == driver.id;
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
