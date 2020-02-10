package ru.job4j.carprice.dao;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import ru.job4j.carprice.util.HibernateUtil;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 25.12.2019
 */
public class AbstractDao {

  private static final Logger LOG = LogManager.getLogger(AbstractDao.class);

  public <T> T tx(final Function<Session, T> command) {
    final Session session = HibernateUtil.getInstance().getSessionFactory().openSession();
    final Transaction tx = session.beginTransaction();
    try {
      T rsl = command.apply(session);
      tx.commit();
      return rsl;
    } catch (final Exception e) {
      LOG.error("error msg: {}", e.getMessage());
      session.getTransaction().rollback();
      throw e;
    } finally {
      session.close();
    }
  }

  public <T> void save(T t) {
    tx(session -> {
          session.persist(t);
          return t;
        }
    );
  }

  public <T> void update(T t) {
    tx(session -> {
      session.merge(t);
      return t;
    });
  }

  public <T> List<T> findAll(String modelName) {
    return tx(session ->
        (List<T>) session.createQuery("from " + modelName).getResultList()
    );
  }

  public <T, V> List<T> findAllBy(String query, String param, V v) {
    return tx(session ->
        (List<T>) session.createQuery(query).setParameter(param, v)
            .getResultList()
    );
  }

  public <T> T load(Class<T> tClass, Long id) {
    return tx(session ->
        session.load(tClass, id)
    );
  }

  public <T> T find(Class<T> tClass, Long id) {
    return tx(session ->
        session.get(tClass, id)
    );
  }

  public <T> void delete(T t) {
    tx(session -> {
          session.delete(t);
          return t;
        }
    );
  }

  public <T> List<T> findAllByParams(String query, Map<String, Object> params) {
    return tx(session -> {
          Query queryH = session.createQuery(query);
          for (Map.Entry<String, Object> entry : params.entrySet()) {
            queryH.setParameter(entry.getKey(), entry.getValue());
          }
          return (List<T>) queryH.getResultList();
        }
    );
  }

  public <T> T getFirst(List<T> list) {
    return list.isEmpty() ? null : list.get(0);
  }

}
