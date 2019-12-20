package ru.job4j.carprice.service;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.dao.ModelDao;
import ru.job4j.carprice.dao.ModelDaoImpl;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 27.12.2019
 */
public class ModelServiceImpl implements ModelService {

  private static final Logger LOG = LogManager.getLogger(ModelServiceImpl.class);
  private final ModelDao modelDao = ModelDaoImpl.getInstance();

  private final static ModelService INSTANCE = new ModelServiceImpl();

  public static ModelService getInstance() {
    return INSTANCE;
  }

  private ModelServiceImpl() {
  }

  @Override
  public List<Model> findByBrand(Brand brand) {
    return modelDao.findByBrand(brand);
  }

  @Override
  public Model find(Model model) {
    return modelDao.find(model);
  }

  @Override
  public Model load(Model model) {
    return modelDao.load(model);
  }

  @Override
  public List<Model> findAll() {
    return modelDao.findAll();
  }
}
