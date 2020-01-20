package ru.job4j.carprice.dao;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Brand;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 23.12.2019
 */
public class BrandDaoImpl extends AbstractDao implements BrandDao {

  private static final Logger LOG = LogManager.getLogger(BrandDaoImpl.class);

  private final static BrandDao INSTANCE = new BrandDaoImpl();

  private BrandDaoImpl() {
  }

  public static BrandDao getInstance() {
    return INSTANCE;
  }

  @Override
  public Brand find(Brand brand) {
    return super.find(Brand.class, brand.getId());
  }

  @Override
  public List<Brand> findAll() {
    return super.findAll("Brand");
  }

  @Override
  public Brand findByName(String name) {
    return (Brand) super.findAllBy("from Brand b where b.name =: name", "name", name).stream().findFirst().orElse(null);
  }
}
