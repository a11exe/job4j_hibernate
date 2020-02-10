package ru.job4j.carprice.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

import liquibase.exception.LiquibaseException;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 24.12.2019
 */
public class ModelDaoImplTest extends BaseTest {

  @Autowired
  private BrandDao brandDao;
  @Autowired
  private ModelDao modelDao;

  @BeforeClass
  public static void before() throws LiquibaseException {
    initDb();
  }

  @AfterClass
  public static void after() throws LiquibaseException {
    dropDb();
  }

  @Test
  public void findByBrand() {
    Brand brand = new Brand();
    brand.setId(1L);
    assertThat(modelDao.findByBrand(brandDao.find(brand)).size(), is(30));
  }

  @Test
  public void find() {
    Model model = new Model();
    model.setId(2L);
    assertThat(modelDao.find(model).getName(), is("2101"));
  }

  @Test
  public void findAll() {
    assertThat(modelDao.findAll().size(), is(1373));
  }
}