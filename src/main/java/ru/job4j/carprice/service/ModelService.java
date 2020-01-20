package ru.job4j.carprice.service;

import java.util.List;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

public interface ModelService {

  List<Model> findByBrand(Brand brand);

  Model find(Model model);

  Model load(Model model);

  List<Model> findAll();

}
