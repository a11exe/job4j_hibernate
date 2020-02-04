package ru.job4j.spring;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
public class MemoryStorage implements Storage {

  @Override
  public void add(User user) {
    System.out.println("store to memory");
  }
}
