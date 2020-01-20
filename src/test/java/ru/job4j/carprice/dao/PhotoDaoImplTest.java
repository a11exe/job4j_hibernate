package ru.job4j.carprice.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.01.2020
 */
public class PhotoDaoImplTest extends BaseTest {

  private final PhotoDao photoDao = PhotoDaoImpl.getInstance();
  private final AdDao adDao = AdDaoImpl.getInstance();

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void findByAd() {
    Ad ad = new Ad();
    adDao.save(ad);
    Ad ad2 = new Ad();
    adDao.save(ad2);
    Photo photo = new Photo();
    photo.setAd(ad);
    photoDao.save(photo);
    assertThat(photo.getId(), not(0));
    assertThat(photoDao.findByAd(ad).size(), not(0));
    assertThat(photoDao.findByAd(ad2).size(), is(0));
    adDao.delete(ad);
    adDao.delete(ad2);
    assertThat(photoDao.findAll().size(), is(0));
  }

  @Test
  public void find() {
    Photo photo = new Photo();
    photoDao.save(photo);
    assertThat(photo.getId(), not(0));
    photoDao.update(photo);
    Photo finded = new Photo();
    finded.setId(photo.getId());
    assertNotNull(photoDao.find(finded));
    photoDao.delete(photo);
  }

  @Test
  public void findAll() {
    Photo photo = new Photo();
    Photo photo2 = new Photo();
    photoDao.save(photo);
    photoDao.save(photo2);
    assertThat(photoDao.findAll().size(), is(2));
    photoDao.delete(photo);
    photoDao.delete(photo2);
  }

  @Test
  public void save() {
    Photo photo = new Photo();
    photoDao.save(photo);
    assertThat(photo.getId(), not(0));
    photoDao.delete(photo);
  }

  @Test
  public void update() {
    Photo photo = new Photo();
    photoDao.save(photo);
    assertThat(photo.getId(), not(0));
    photo.setName("newname.png");
    photoDao.update(photo);
    Photo updated = new Photo();
    updated.setId(photo.getId());
    assertThat(photoDao.find(updated).getName(), is("newname.png"));
    photoDao.delete(photo);
  }

  @Test
  public void delete() {
    Photo photo = new Photo();
    photoDao.save(photo);
    assertThat(photoDao.findAll().size(), is(1));
    photoDao.delete(photo);
    assertThat(photoDao.findAll().size(), is(0));
  }
}