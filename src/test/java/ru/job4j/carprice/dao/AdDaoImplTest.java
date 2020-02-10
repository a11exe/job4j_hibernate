package ru.job4j.carprice.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Status;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class AdDaoImplTest extends BaseTest {

  @Autowired
  private AdDao adDao;

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
    Ad ad = new Ad();
    adDao.save(ad);
    assertThat(ad.getId(), not(0));
    adDao.delete(ad);
  }

  @Test
  public void update() {
    Ad ad = new Ad();
    adDao.save(ad);
    assertThat(ad.getId(), not(0));
    ad.setStatus(Status.SOLD);
    adDao.update(ad);
    Ad updated = new Ad();
    updated.setId(ad.getId());
    assertThat(adDao.find(updated).getStatus(), is(Status.SOLD));
    adDao.delete(ad);
  }

  @Test
  public void findAll() {
    Ad ad = new Ad();
    Ad ad2 = new Ad();
    adDao.save(ad);
    adDao.save(ad2);
    assertThat(adDao.findAll().size(), is(2));
    adDao.delete(ad);
    adDao.delete(ad2);
  }

  @Test
  public void findByUser() {
    Ad ad = new Ad();
    Ad ad2 = new Ad();
    User admin = new User();
    admin.setId(1L);
    ad2.setUser(admin);
    adDao.save(ad);
    adDao.save(ad2);
    assertThat(adDao.findByUser(admin).size(), is(1));
    adDao.delete(ad);
    adDao.delete(ad2);
  }

  @Test
  public void find() {
    Ad ad = new Ad();
    adDao.save(ad);
    assertThat(ad.getId(), not(0));
    adDao.update(ad);
    Ad finded = new Ad();
    finded.setId(ad.getId());
    assertNotNull(adDao.find(finded));
    adDao.delete(ad);
  }

  @Test
  public void delete() {
    Ad ad = new Ad();
    adDao.save(ad);
    assertThat(adDao.findAll().size(), is(1));
    adDao.delete(ad);
    assertThat(adDao.findAll().size(), is(0));
  }
}