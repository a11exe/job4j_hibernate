package ru.job4j.cars.daoxml;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertThat;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import ru.job4j.cars.modelxml.EngineXml;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 16.12.2019
 */
public class EngineXmlDaoImplTest {

  private final EngineDao engineDao = EngineDaoImpl.getInstance();

  @Before
  public void before() {
    engineDao.findAll().forEach(engineDao::delete);
  }

  @Test
  public void create() {
    EngineXml engine = new EngineXml();
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
  }

  @Test
  public void update() {
    EngineXml engine = new EngineXml(200);
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    engine.setPower(350);
    engineDao.update(engine);
    assertThat(engineDao.find(engine).getPower(), is(350));
  }

  @Test
  public void delete() {
    EngineXml engine = new EngineXml();
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    engineDao.delete(engine);
    assertThat(engineDao.findAll().size(), is(0));
  }

  @Test
  public void find() {
    EngineXml engine = new EngineXml(100);
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    assertThat(engineDao.find(engine).getPower(), is(100));
  }

  @Test
  public void findAll() {
    engineDao.create(new EngineXml(100));
    engineDao.create(new EngineXml(200));
    List<EngineXml> engines = engineDao.findAll();
    assertThat(engines.size(), is(2));
  }
}