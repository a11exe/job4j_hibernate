package ru.job4j.cars.daoxml;

import java.util.function.Function;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;
import ru.job4j.cars.util.HibernateUtil;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 16.12.2019
 */
public abstract class AbstractDao {

  private static final Logger LOG = LogManager.getLogger(AbstractDao.class);

  public <T> T tx(final Function<Session, T> command) {
    final Session session = HibernateUtil.getInstance().getSessionFactory().openSession();
    final Transaction tx = session.beginTransaction();
    try {
      T rsl = command.apply(session);
      tx.commit();
      return rsl;
    } catch (final Exception e) {
      session.getTransaction().rollback();
      LOG.error("database error {}", e.getMessage());
      throw e;
    } finally {
      session.close();
    }
  }

}
