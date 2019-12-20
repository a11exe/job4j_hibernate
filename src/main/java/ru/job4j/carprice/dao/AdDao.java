package ru.job4j.carprice.dao;

import java.util.List;
import java.util.Set;

import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.User;

public interface AdDao {

  void save(Ad ad);

  void update(Ad ad);

  List<Ad> findAll();

  Set<Ad> findByUser(User user);

  Ad find(Ad ad);

  Ad load(Ad ad);

  void delete(Ad ad);

}
