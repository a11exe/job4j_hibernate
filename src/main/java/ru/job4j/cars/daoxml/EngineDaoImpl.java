package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.EngineXml;

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
  public void create(EngineXml engine) {
    this.tx(session -> {
      session.save(engine);
      return engine;
    });
  }

  @Override
  public void update(EngineXml engine) {
    this.tx(session -> {
      session.update(engine);
      return engine;
    });
  }

  @Override
  public void delete(EngineXml engine) {
    this.tx(session -> {
      session.delete(engine);
      return engine;
    });
  }

  @Override
  public EngineXml find(EngineXml engine) {
    return this.tx(session -> session.get(EngineXml.class, engine.getId()));
  }

  @Override
  public List<EngineXml> findAll() {
    return this.tx(session -> session.createQuery("FROM EngineXml", EngineXml.class).getResultList());
  }
}
