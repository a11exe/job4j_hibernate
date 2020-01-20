package ru.job4j.carprice.dao;

import java.util.List;
import ru.job4j.carprice.model.User;

public interface UserDao {

  void save(User user);

  void update(User user);

  List<User> findAll();

  User find(User user);

  User findByLogin(User user);

  User findByEmail(User user);

  void delete(User user);

}
