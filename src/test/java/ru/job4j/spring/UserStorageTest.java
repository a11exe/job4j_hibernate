package ru.job4j.spring;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
public class UserStorageTest {

  @Test
  public void whenLoadContextShouldGetBean() {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
    MemoryStorage memoryStorage = context.getBean(MemoryStorage.class);
    assertNotNull(memoryStorage);
  }

  @Test
  public void whenLoadContextShouldGetBeanWithDepends() {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
    UserStorage userStorage = context.getBean(UserStorage.class);
    userStorage.add(new User());
    assertNotNull(userStorage);
  }


}