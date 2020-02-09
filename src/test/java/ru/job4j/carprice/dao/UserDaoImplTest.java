package ru.job4j.carprice.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.core.IsNot.not;
import static org.junit.Assert.*;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class UserDaoImplTest extends BaseTest {

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
  public void save() {
    User user = new User();
    userDao.save(user);
    assertThat(user.getId(), not(0));
    userDao.delete(user);
  }

  @Test
  public void update() {
    User user = new User();
    userDao.save(user);
    assertThat(user.getId(), not(0));
    user.setEmail("fgd@mail.com");
    userDao.update(user);
    User updated = new User();
    updated.setId(user.getId());
    assertThat(userDao.find(updated).getEmail(), is("fgd@mail.com"));
    userDao.delete(user);
  }

  @Test
  public void findAll() {
    User user = new User();
    User user2 = new User();
    userDao.save(user);
    userDao.save(user2);
    assertThat(userDao.findAll().size(), is(3));
    userDao.delete(user);
    userDao.delete(user2);
  }

  @Test
  public void find() {
    User user = new User();
    userDao.save(user);
    assertThat(user.getId(), not(0));
    userDao.update(user);
    User finded = new User();
    finded.setId(user.getId());
    assertNotNull(userDao.find(finded));
    userDao.delete(user);
  }

  @Test
  public void findByLogin() {
    User user = new User();
    User user2 = new User();
    user2.setLogin("mmm");
    userDao.save(user);
    userDao.save(user2);
    User finded = new User();
    finded.setLogin(user2.getLogin());
    assertThat(userDao.findByLogin(finded), is(user2));
    userDao.delete(user);
    userDao.delete(user2);
  }

  @Test
  public void findByEmail() {
    User user = new User();
    User user2 = new User();
    user2.setEmail("mmm@mail.com");
    userDao.save(user);
    userDao.save(user2);
    User finded = new User();
    finded.setEmail(user2.getEmail());
    assertThat(userDao.findByEmail(finded), is(user2));
    userDao.delete(user);
    userDao.delete(user2);
  }

  @Test
  public void delete() {
    User user = new User();
    userDao.save(user);
    assertThat(userDao.findAll().size(), is(2));
    userDao.delete(user);
    assertThat(userDao.findAll().size(), is(1));
  }
}