package ru.job4j.carprice.service;


import java.util.List;
import ru.job4j.carprice.model.Brand;

public interface BrandService {

  Brand find(Brand brand);

  List<Brand> findAll();

}
