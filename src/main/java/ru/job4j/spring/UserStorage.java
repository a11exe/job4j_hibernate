package ru.job4j.spring;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
public class UserStorage {

  private final Storage storage;

  public UserStorage(Storage storage) {
    this.storage = storage;
  }

  public void add(User user) {
    this.storage.add(user);
  }
}
