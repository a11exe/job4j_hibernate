package ru.job4j.hibernate.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class HibernateSessionFactoryUtil {

  private static SessionFactory sessionFactory;
  private static final Logger LOG = LogManager.getLogger(HibernateSessionFactoryUtil.class);


  private HibernateSessionFactoryUtil() {

  }

  public static SessionFactory getSessionFactory() {
    if (sessionFactory == null) {
      try {
        sessionFactory = new Configuration()
            .addResource("User.hbm.xml")
            //.addClass(User.class)
            .configure()
            .buildSessionFactory();
      } catch (Exception e) {
        LOG.error("Error creating session factory: " + e);
      }
    }
    return sessionFactory;
  }

}
