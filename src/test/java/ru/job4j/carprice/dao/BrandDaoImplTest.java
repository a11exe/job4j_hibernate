package ru.job4j.carprice.dao;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import ru.job4j.carprice.model.Brand;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 23.12.2019
 */
public class BrandDaoImplTest extends BaseTest {

  private final BrandDao brandDao = BrandDaoImpl.getInstance();

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void findAll() {
    assertThat(brandDao.findAll().size(), is(34));
  }

  @Test
  public void find() {
    Brand brand = new Brand();
    brand.setId(2);
    assertThat(brandDao.find(brand).getName(), is("Audi"));
  }
}