package ru.job4j.carprice.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Brand;
import ru.job4j.carprice.model.User;

public interface AdService {

  ServiceAnswer<Ad> save(Ad ad);

  ServiceAnswer<Ad> update(Ad ad, User loggedUser);

  ServiceAnswer<Ad> validate(Ad ad);

  List<Ad> findAll();

  Set<Ad> findByUser(User user);

  Ad find(Ad ad);

  Ad load(Ad ad);

  void delete(Ad ad);

  Map<Brand, Integer> getAdsByBrandCount();

}
