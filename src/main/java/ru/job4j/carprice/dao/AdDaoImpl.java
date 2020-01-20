package ru.job4j.carprice.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class AdDaoImpl extends AbstractDao implements AdDao {

  private static final Logger LOG = LogManager.getLogger(AdDaoImpl.class);

  private final static AdDao INSTANCE = new AdDaoImpl();

  public static AdDao getInstance() {
    return INSTANCE;
  }

  private AdDaoImpl() {
  }

  @Override
  public void save(Ad ad) {
    super.save(ad);
  }

  @Override
  public void update(Ad ad) {
    super.update(ad);
  }

  @Override
  public List<Ad> findAll() {
    return super.findAll("Ad");
  }

  @Override
  public Set<Ad> findByUser(User user) {
      Set<Ad> ads = new HashSet<>(super.findAllBy("from Ad a where a.user =: user", "user", user));
    return ads;
  }

  @Override
  public Ad find(Ad ad) {
    return super.find(Ad.class, ad.getId());
  }

  @Override
  public Ad load(Ad ad) {
    return super.load(Ad.class, ad.getId());
  }

  @Override
  public void delete(Ad ad) {
    super.delete(ad);
  }
}
