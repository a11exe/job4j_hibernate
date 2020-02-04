package ru.job4j.springscan;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import ru.job4j.spring.User;
import ru.job4j.spring.UserStorage;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 04.02.2020
 */
public class UserStorageScanTest {

  @Test
  public void whenComponentScanShouldGetBeanWithDepends() {
    ApplicationContext context = new ClassPathXmlApplicationContext("spring-context-scan.xml");
    UserStorageScan userStorage = context.getBean(UserStorageScan.class);
    userStorage.add(new User());
    assertNotNull(userStorage);
  }

}