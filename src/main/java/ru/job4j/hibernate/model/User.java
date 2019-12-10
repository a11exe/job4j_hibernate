package ru.job4j.hibernate.model;

import java.sql.Timestamp;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 10.12.2019
 */
public class User {

  private int id;
  private String name;
  private Timestamp expired;

  public User() {
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

  public Timestamp getExpired() {
    return expired;
  }

  public void setExpired(Timestamp expired) {
    this.expired = expired;
  }

  @Override
  public String toString() {
    return "User{" +
        "id=" + id +
        ", name='" + name + '\'' +
        ", expired=" + expired +
        '}';
  }
}
