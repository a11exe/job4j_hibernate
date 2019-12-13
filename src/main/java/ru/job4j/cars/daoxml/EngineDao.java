package ru.job4j.cars.daoxml;

import java.util.List;
import ru.job4j.cars.modelxml.EngineXml;

public interface EngineDao {

  void create(EngineXml engine);

    void update(EngineXml engine);

    void delete(EngineXml engine);

  EngineXml find(EngineXml engine);

    List<EngineXml> findAll();

}
