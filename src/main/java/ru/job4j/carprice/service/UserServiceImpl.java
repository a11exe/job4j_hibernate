package ru.job4j.carprice.service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import ru.job4j.carprice.dao.UserDao;
import ru.job4j.carprice.dao.UserRepository;
import ru.job4j.carprice.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
@Service
public class UserServiceImpl implements UserService {

  private static final Logger LOG = LogManager.getLogger(UserServiceImpl.class);

  @Autowired
  private UserRepository userRepository;

  @Autowired
  private AdService adService;

  private final static UserService INSTANCE = new UserServiceImpl();

  public static UserService getInstance() {
    return INSTANCE;
  }

  private UserServiceImpl() {
  }

  @Override
  public ServiceAnswer<User> signIn(User user) {
    ServiceAnswer<User> serviceAnswer = new ServiceAnswer<>(true);
    User finded = userRepository.findByLogin(user);
    serviceAnswer.setValue(finded);
    if (finded == null) {
      serviceAnswer.setNoErrors(false);
      serviceAnswer.setMessages(Collections.singletonMap("login", "login not found"));
      LOG.info("user login {} not found", user.getLogin());
    }
    if (finded != null && !user.getPassword().equals(finded.getPassword())) {
      serviceAnswer.setNoErrors(false);
      serviceAnswer.setMessages(Collections.singletonMap("password", "password incorrect"));
      LOG.info("user login {} password incorrect", user.getLogin());
    }

    return serviceAnswer;
  }

  @Override
  public ServiceAnswer<User> validate(User user) {
    ServiceAnswer<User> serviceAnswer = new ServiceAnswer<>(false, new HashMap<>());
    if (user.getName() == null || user.getName().isEmpty()) {
      serviceAnswer.getMessages().put("name", "Name is empty");
      LOG.info("Error validation Name is empty");
    }
    if (user.getLogin() == null || user.getLogin().isEmpty()) {
      serviceAnswer.getMessages().put("login", "Login is empty");
      LOG.info("Error validation Login is empty");
    }
    if (user.getEmail() == null || user.getEmail().isEmpty()) {
      serviceAnswer.getMessages().put("email", "Email is empty");
      LOG.info("Error validation Email is empty");
    }
    if (user.getPassword() == null || user.getPassword().isEmpty()) {
      serviceAnswer.getMessages().put("password", "Password is empty");
      LOG.info("Error validation Password is empty");
    }
    serviceAnswer.setNoErrors(serviceAnswer.getMessages().size() == 0);

    return serviceAnswer;
  }

  @Override
  public ServiceAnswer<User> signUp(User user) {
    ServiceAnswer<User> serviceAnswer = validate(user);
    if (serviceAnswer.isNoErrors()) {
      User finded = userRepository.findByLogin(user);
      if (finded != null) {
        serviceAnswer.setNoErrors(false);
        serviceAnswer.setMessages(Collections.singletonMap("login", "login alredy exist"));
      }
    }
    if (serviceAnswer.isNoErrors()) {
      User finded = userRepository.findByEmail(user);
      if (finded != null) {
        serviceAnswer.setNoErrors(false);
        serviceAnswer.setMessages(Collections.singletonMap("email", "email alredy exist"));
      }
    }
    if (serviceAnswer.isNoErrors()) {
      userRepository.save(user);
    }

    return serviceAnswer;
  }

  @Override
  public ServiceAnswer<User> update(User user) {
    ServiceAnswer<User> serviceAnswer = validate(user);
    if (serviceAnswer.isNoErrors()) {
      userRepository.save(user);
    }
    return serviceAnswer;
  }

  @Override
  public List<User> findAll() {
    return userRepository.findAll();
  }

  @Override
  public User find(User user) {
    return userRepository.findById(user.getId()).orElse(null);
  }

  @Override
  public User findWithAds(User user) {
    user = find(user);
    user.setAds(adService.findByUser(user));
    return user;
  }
}
