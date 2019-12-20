package ru.job4j.carprice.dao;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 23.12.2019
 */
public class ModelDaoImpl extends AbstractDao implements ModelDao {

  private static final Logger LOG = LogManager.getLogger(ModelDaoImpl.class);

  private final static ModelDao INSTANCE = new ModelDaoImpl();

  private ModelDaoImpl() {
  }

  public static ModelDao getInstance() {
    return INSTANCE;
  }

  @Override
  public List<Model> findByBrand(Brand brand) {
    return super.findAllBy("from Model m where m.brand =: brand", "brand", brand);
  }

  @Override
  public Model find(Model model) {
    return super.find(Model.class, model.getId());
  }

  @Override
  public List<Model> findAll() {
    return super.findAll("Model");
  }

  @Override
  public Model load(Model model) {
    return super.load(Model.class, model.getId());
  }
}
