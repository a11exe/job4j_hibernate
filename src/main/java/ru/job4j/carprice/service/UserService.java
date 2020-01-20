package ru.job4j.carprice.service;

import java.util.List;
import ru.job4j.carprice.model.User;

public interface UserService {

  ServiceAnswer<User> signIn(User user);

  ServiceAnswer<User> signUp(User user);

  ServiceAnswer<User> update(User user);

  ServiceAnswer<User> validate(User user);

  List<User> findAll();

  User find(User user);

  User findWithAds(User user);

}
