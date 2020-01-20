package ru.job4j.carprice.dao;

import java.util.List;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

public interface ModelDao {

  List<Model> findByBrand(Brand brand);

  Model find(Model model);

  Model load(Model model);

  List<Model> findAll();

}
