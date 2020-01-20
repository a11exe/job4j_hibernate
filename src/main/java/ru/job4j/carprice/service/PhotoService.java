package ru.job4j.carprice.service;

import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;
import ru.job4j.carprice.model.User;

import java.util.List;

public interface PhotoService {

  List<Photo> findByAd(Ad ad);

  Photo find(Photo photo);

  Photo load(Photo photo);

  List<Photo> findAll();

  void save(Photo photo);

  void update(Photo photo);

  void delete(Photo photo, User loggedUser);

}
