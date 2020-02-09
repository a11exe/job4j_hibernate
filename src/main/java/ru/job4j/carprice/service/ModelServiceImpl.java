package ru.job4j.carprice.service;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.job4j.carprice.dao.ModelDao;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.Model;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 27.12.2019
 */
@Component
public class ModelServiceImpl implements ModelService {

  private static final Logger LOG = LogManager.getLogger(ModelServiceImpl.class);

  @Autowired
  private ModelDao modelDao;

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
