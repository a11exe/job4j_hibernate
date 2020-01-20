package ru.job4j.carprice.dao;

import java.util.List;
import ru.job4j.carprice.model.Brand;

public interface BrandDao {

  Brand find(Brand brand);

  List<Brand> findAll();

  Brand findByName(String name);

}
