package ru.job4j.springscan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.job4j.spring.Storage;
import ru.job4j.spring.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
@Component
public class UserStorageScan {

  private final Storage storage;

  @Autowired
  public UserStorageScan(Storage storage) {
    this.storage = storage;
  }

  public void add(User user) {
    this.storage.add(user);
  }
}
