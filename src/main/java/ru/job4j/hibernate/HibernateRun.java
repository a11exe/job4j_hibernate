package ru.job4j.hibernate;

import java.sql.Timestamp;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.hibernate.model.User;
import ru.job4j.hibernate.service.UserService;
import ru.job4j.hibernate.service.UserServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class HibernateRun {

  private static final Logger LOG = LogManager.getLogger(HibernateRun.class);

  public static void main(String[] args) {

    UserService userService = new UserServiceImpl();

    LOG.info("create user");
    User user = new User();
    user.setName("Alex");
    user.setExpired(new Timestamp(System.currentTimeMillis()));
    userService.createUser(user);
    LOG.info("created user {}", user);

    LOG.info("find user");
    User userById = new User();
    userById.setId(user.getId());
    userById = userService.findUser(userById);
    LOG.info("founded user {}", userById);

    LOG.info("update user");
    User userUpdate = new User();
    userUpdate.setId(user.getId());
    userUpdate.setName("Alex RRR");
    userService.updateUser(userUpdate);
    LOG.info("updated user {}", userUpdate);

    LOG.info("find user");
    userById = new User();
    userById.setId(user.getId());
    userById = userService.findUser(userById);
    LOG.info("founded user {}", userById);

    LOG.info("delete user");
    User userDelete = new User();
    userDelete.setId(user.getId());
    userService.deleteUser(userDelete);
    LOG.info("deleted user {}", userDelete);

    LOG.info("find all users");
    User userBob = new User();
    userBob.setName("Bob");
    userService.createUser(userBob);

    User userMike = new User();
    userMike.setName("Mike");
    userService.createUser(userMike);

    LOG.info("founded users");
    userService.findAll().forEach(u -> LOG.info("{}", u));

  }

}
