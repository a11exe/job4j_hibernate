package ru.job4j.carprice.dao;

import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Repository;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
@Repository
public class UserDaoImpl extends AbstractDao implements UserDao {

  private static final Logger LOG = LogManager.getLogger(UserDaoImpl.class);

  @Override
  public void save(User user) {
    super.save(user);
  }

  @Override
  public void update(User user) {
    super.update(user);
  }

  @Override
  public List<User> findAll() {
    return super.findAll("User");
  }

  @Override
  public User find(User user) {
    return super.find(User.class, user.getId());
  }

  @Override
  public User findByLogin(User user) {
    List<User> users = findAllBy("from User u where u.login =: login", "login", user.getLogin());
    return super.getFirst(users);
  }

  @Override
  public User findByEmail(User user) {
    List<User> users = findAllBy("from User u where u.email =: email", "email", user.getEmail());
    return super.getFirst(users);
  }

  @Override
  public void delete(User user) {
    super.delete(user);
  }
}
