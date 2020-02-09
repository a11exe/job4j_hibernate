package ru.job4j.carprice.service;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.job4j.carprice.dao.BrandDao;
import ru.job4j.carprice.model.Brand;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
@Component
public class BrandServiceImpl implements BrandService {

  private static final Logger LOG = LogManager.getLogger(BrandServiceImpl.class);

  @Autowired
  private BrandDao brandDao;

  @Override
  public Brand find(Brand brand) {
    return brandDao.find(brand);
  }

  @Override
  public List<Brand> findAll() {
    return brandDao.findAll();
  }

  @Override
  public Brand findByName(String name) {
    return brandDao.findByName(name);
  }
}
