package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Engine;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 13.12.2019
 */
public class EngineDaoImpl extends AbstractDao implements EngineDao {

  private final static EngineDao INSTANCE = new EngineDaoImpl();

  private EngineDaoImpl() {
  }

  public static EngineDao getInstance() {
    return INSTANCE;
  }

  @Override
  public void create(Engine engine) {
    this.tx(session -> {
      session.save(engine);
      return engine;
    });
  }

  @Override
  public void update(Engine engine) {
    this.tx(session -> {
      session.update(engine);
      return engine;
    });
  }

  @Override
  public void delete(Engine engine) {
    this.tx(session -> {
      session.delete(engine);
      return engine;
    });
  }

  @Override
  public Engine find(Engine engine) {
    return this.tx(session -> session.get(Engine.class, engine.getId()));
  }

  @Override
  public List<Engine> findAll() {
    return this.tx(session -> session.createQuery("FROM Engine", Engine.class).getResultList());
  }
}
