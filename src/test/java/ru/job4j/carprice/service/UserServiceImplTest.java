package ru.job4j.carprice.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.dao.BaseTest;
import ru.job4j.carprice.dao.UserDao;
import ru.job4j.carprice.model.Role;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
public class UserServiceImplTest extends BaseTest {

  @Autowired
  private UserService userService;
  @Autowired
  private UserDao userDao;

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void whenUserExistThanNoErrors() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    userDao.save(user);
    ServiceAnswer serviceAnswer = userService.signIn(user);
    assertTrue(serviceAnswer.isNoErrors());
    userDao.delete(user);
  }

  @Test
  public void whenUserDoesntExistThanHasErrors() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    ServiceAnswer serviceAnswer = userService.signIn(user);
    assertFalse(serviceAnswer.isNoErrors());
  }

  @Test
  public void whenFieldsCorrectThanNoErrors() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    ServiceAnswer serviceAnswer = userService.validate(user);
    assertTrue(serviceAnswer.isNoErrors());
  }

  @Test
  public void whenFieldsNotCorrectThanHasErrors() {
    User user = new User();
    ServiceAnswer serviceAnswer = userService.validate(user);
    assertFalse(serviceAnswer.isNoErrors());
    assertThat(serviceAnswer.getMessages().size(), is(4));
  }

  @Test
  public void whenFieldsCorrectThanUserSaved() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    ServiceAnswer serviceAnswer = userService.signUp(user);
    assertTrue(serviceAnswer.isNoErrors());
    assertThat(user.getId(), not(0));
    userDao.delete(user);
  }

  @Test
  public void whenFieldsNotCorrectThanUserDoesntSaved() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    user.setLogin("");
    ServiceAnswer serviceAnswer = userService.signUp(user);
    assertFalse(serviceAnswer.isNoErrors());
    assertThat(user.getId(), is(0));
  }

  @Test
  public void findAll() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    ServiceAnswer serviceAnswer = userService.signUp(user);
    assertTrue(serviceAnswer.isNoErrors());
    assertThat(userService.findAll().size(), is(2));
    userDao.delete(user);
  }

  @Test
  public void find() {
    User user = new User("bob", "222", "bob", "bob", "bob@mail.com", Role.USER);
    ServiceAnswer serviceAnswer = userService.signUp(user);
    assertTrue(serviceAnswer.isNoErrors());
    User finded = new User();
    finded.setId(user.getId());
    assertThat(userService.find(finded), is(user));
    userDao.delete(user);
    assertNull(userService.find(finded));
  }
}