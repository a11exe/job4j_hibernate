package ru.job4j.carprice.dao;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Brand;
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
    return new HashSet<>(super.findAllBy("from Ad a where a.user =: user", "user", user));
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

  @Override
  public List<Ad> findByBrand(Brand brand) {
    return super.findAllBy("from Ad a where a.car.model.brand =: brand", "brand", brand);
  }

  @Override
  public List<Ad> findByFilter(Filter filter) {
    Map<String, Object> params = new HashMap<>();
    StringBuffer query = new StringBuffer("from Ad a");
    int count = 0;
    if (!filter.isEmpty()) {
      query.append(" where");
    }
    if (filter.getBrandName() != null) {
      query.append(" a.car.model.brand.name = :brandName");
      params.put("brandName", filter.getBrandName());
      count++;
    }
    if (filter.isHasPhotoOnly()) {
      if (count > 0) {
        query.append(" and");
      }
      count++;
      query.append(" size(a.photos) != 0");
    }
    if (filter.isLastDayOnly()) {
      if (count > 0) {
        query.append(" and");
      }
      query.append(" a.date >= :date");
      params.put("date", LocalDate.now().atStartOfDay());
    }

    return super.findAllByParams(query.toString(), params);
  }
}
