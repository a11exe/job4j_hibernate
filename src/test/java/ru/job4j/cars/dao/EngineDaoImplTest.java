package ru.job4j.cars.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertThat;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import ru.job4j.cars.model.Engine;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 16.12.2019
 */
public class EngineDaoImplTest {

  private final EngineDao engineDao = EngineDaoImpl.getInstance();

  @Before
  public void before() {
    engineDao.findAll().forEach(engineDao::delete);
  }

  @Test
  public void create() {
    Engine engine = new Engine();
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
  }

  @Test
  public void update() {
    Engine engine = new Engine(200);
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    engine.setPower(350);
    engineDao.update(engine);
    assertThat(engineDao.find(engine).getPower(), is(350));
  }

  @Test
  public void delete() {
    Engine engine = new Engine();
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    engineDao.delete(engine);
    assertThat(engineDao.findAll().size(), is(0));
  }

  @Test
  public void find() {
    Engine engine = new Engine(100);
    engineDao.create(engine);
    assertThat(engine.getId(), not(0));
    assertThat(engineDao.find(engine).getPower(), is(100));
  }

  @Test
  public void findAll() {
    engineDao.create(new Engine(100));
    engineDao.create(new Engine(200));
    List<Engine> engines = engineDao.findAll();
    assertThat(engines.size(), is(2));
  }
}