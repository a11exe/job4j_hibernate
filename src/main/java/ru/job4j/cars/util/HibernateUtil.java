package ru.job4j.cars.util;

import java.util.Properties;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import ru.job4j.cars.model.Car;
import ru.job4j.cars.model.Driver;
import ru.job4j.cars.model.Engine;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class HibernateUtil {
  private static final Logger LOG = LogManager.getLogger(HibernateUtil.class);
  private SessionFactory sessionFactory;

  private static class HibernateUtilHolder {
    public static final HibernateUtil INSTANCE = new HibernateUtil();
  }

  public static HibernateUtil getInstance() {
    return HibernateUtilHolder.INSTANCE;
  }

  public SessionFactory getSessionFactory() {
    if (sessionFactory == null) {
      try {
        Configuration configuration = new Configuration();
        // Hibernate settings equivalent to hibernate.cfg.xml's properties
        Properties app = new Properties();
        app.load(HibernateUtil.class.getClassLoader().getResourceAsStream("app.properties"));

        Properties settings = new Properties();
        settings.put(Environment.DRIVER, app.getProperty("driver"));
        settings.put(Environment.URL, app.getProperty("url"));
        settings.put(Environment.USER, app.getProperty("user"));
        settings.put(Environment.PASS, app.getProperty("password"));
        settings.put(Environment.DIALECT, app.getProperty("dialect"));
        settings.put(Environment.SHOW_SQL, app.getProperty("show_sql"));
        settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
        settings.put(Environment.HBM2DDL_AUTO, app.getProperty("hbm2ddl_auto"));
        configuration.setProperties(settings);
        configuration.addAnnotatedClass(Car.class);
        configuration.addAnnotatedClass(Driver.class);
        configuration.addAnnotatedClass(Engine.class);
        configuration.addResource("Car.hbm.xml");
        configuration.addResource("Engine.hbm.xml");
        configuration.addResource("Driver.hbm.xml");
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
            .applySettings(configuration.getProperties()).build();
        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
      } catch (Exception e) {
        LOG.error("error init hibernate: {} ", e.getMessage());
      }
    }
    return sessionFactory;
  }
}
