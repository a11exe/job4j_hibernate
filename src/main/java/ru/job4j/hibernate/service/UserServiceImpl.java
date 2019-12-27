package ru.job4j.hibernate.service;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import ru.job4j.hibernate.model.User;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class UserServiceImpl implements UserService {

  @Override
  public void createUser(User user) {
    Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
    Transaction tx1 = session.beginTransaction();
    session.save(user);
    tx1.commit();
    session.close();
  }

  @Override
  public User findUser(User user) {
    return HibernateSessionFactoryUtil.getSessionFactory().openSession()
        .get(User.class, user.getId());
  }

  @Override
  public void updateUser(User user) {
    Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
    Transaction tx1 = session.beginTransaction();
    session.update(user);
    tx1.commit();
    session.close();
  }

  @Override
  public void deleteUser(User user) {
    Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
    Transaction tx1 = session.beginTransaction();
    session.delete(user);
    tx1.commit();
    session.close();
  }

  @Override
  public List<User> findAll() {
    return HibernateSessionFactoryUtil.getSessionFactory().openSession()
        .createQuery("from ru.job4j.hibernate.model.User", User.class)
        .getResultList();
  }
}
