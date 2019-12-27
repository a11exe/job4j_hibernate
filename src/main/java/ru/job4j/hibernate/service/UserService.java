package ru.job4j.hibernate.service;

import java.util.List;
import ru.job4j.hibernate.model.User;

public interface UserService {

  void createUser(User user);

  User findUser(User user);

  void updateUser(User user);

  void deleteUser(User user);

  List<User> findAll();

}
