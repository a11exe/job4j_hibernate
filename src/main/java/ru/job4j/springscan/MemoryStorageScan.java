package ru.job4j.springscan;

import org.springframework.stereotype.Component;
import ru.job4j.spring.Storage;
import ru.job4j.spring.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
@Component
public class MemoryStorageScan implements Storage {

  @Override
  public void add(User user) {
    System.out.println("store to memory");
  }
}
