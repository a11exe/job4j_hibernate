package ru.job4j.carprice.model;

import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 20.12.2019
 */
@Entity
@Table(name = "cars")
public class Car {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id")
  private int id;

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "model_id")
  private Model model;

  @Column(name = "year")
  private Integer year;

  @Enumerated(EnumType.STRING)
  private BodyType bodyType;

  @Enumerated(EnumType.STRING)
  private Condition condition;

  @Enumerated(EnumType.STRING)
  private EngineType engineType;

  @Enumerated(EnumType.STRING)
  private Transmission transmission;

  public Car() {
  }

  public Car(Model model, Integer year, BodyType bodyType, Condition condition,
      EngineType engineType, Transmission transmission) {
    this.model = model;
    this.year = year;
    this.bodyType = bodyType;
    this.condition = condition;
    this.engineType = engineType;
    this.transmission = transmission;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public Model getModel() {
    return model;
  }

  public void setModel(Model model) {
    this.model = model;
  }

  public BodyType getBodyType() {
    return bodyType;
  }

  public void setBodyType(BodyType bodyType) {
    this.bodyType = bodyType;
  }

  public Condition getCondition() {
    return condition;
  }

  public void setCondition(Condition condition) {
    this.condition = condition;
  }

  public EngineType getEngineType() {
    return engineType;
  }

  public void setEngineType(EngineType engineType) {
    this.engineType = engineType;
  }

  public Transmission getTransmission() {
    return transmission;
  }

  public void setTransmission(Transmission transmission) {
    this.transmission = transmission;
  }

  public Integer getYear() {
    return year;
  }

  public void setYear(Integer year) {
    this.year = year;
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
    return "Car{" +
        "id=" + id +
        ", model=" + model +
        ", year=" + year +
        ", bodyType=" + bodyType +
        ", condition=" + condition +
        ", engineType=" + engineType +
        ", transmission=" + transmission +
        '}';
  }
}
