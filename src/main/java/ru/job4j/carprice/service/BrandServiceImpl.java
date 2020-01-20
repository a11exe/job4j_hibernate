package ru.job4j.carprice.service;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.dao.BrandDao;
import ru.job4j.carprice.dao.BrandDaoImpl;
import ru.job4j.carprice.model.Brand;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
public class BrandServiceImpl implements BrandService {

  private static final Logger LOG = LogManager.getLogger(BrandServiceImpl.class);
  private final BrandDao brandDao = BrandDaoImpl.getInstance();

  private final static BrandService INSTANCE = new BrandServiceImpl();

  public static BrandService getInstance() {
    return INSTANCE;
  }

  private BrandServiceImpl() {
  }

  @Override
  public Brand find(Brand brand) {
    return brandDao.find(brand);
  }

  @Override
  public List<Brand> findAll() {
    return brandDao.findAll();
  }
}
