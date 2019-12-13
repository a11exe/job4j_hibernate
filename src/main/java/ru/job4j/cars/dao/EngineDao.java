package ru.job4j.cars.dao;

import java.util.List;
import ru.job4j.cars.model.Engine;

public interface EngineDao {

  void create(Engine engine);

    void update(Engine engine);

    void delete(Engine engine);

    Engine find(Engine engine);

    List<Engine> findAll();

}
