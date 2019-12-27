package ru.job4j.todolist.dao;

import java.util.List;
import java.util.function.Function;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import ru.job4j.todolist.model.Item;
import ru.job4j.todolist.util.HibernateUtil;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class ItemDaoImpl implements ItemDao {

  private static final Logger LOG = LogManager.getLogger(ItemDaoImpl.class);
  private final static ItemDao INSTANCE = new ItemDaoImpl();

  private ItemDaoImpl() {
  }

  public static ItemDao getInstance() {
    return INSTANCE;
  }

  private <T> T tx(final Function<Session, T> command) {
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

  @Override
  public void save(Item item) {
    this.tx(
        session -> session.save(item)
    );
  }

  @Override
  public void update(Item item) {
    this.tx(
        session -> {
          session.update(item);
          return item;
        }
    );
  }

  @Override
  public List<Item> findAll(boolean onlyActive) {
    return this.tx(
        session -> {
          CriteriaBuilder cb = session.getCriteriaBuilder();
          CriteriaQuery<Item> cr = cb.createQuery(Item.class);
          Root<Item> root = cr.from(Item.class);
          if (onlyActive) {
            cr.select(root).where(cb.equal(root.get("done"), false));
          } else {
            cr.select(root);
          }
          cr.orderBy(cb.desc(root.get("created")));

          Query<Item> query = session.createQuery(cr);
          return query.getResultList();
        }

    );
  }

  @Override
  public Item find(Item item) {
    return this.tx(
        session ->
            session.get(Item.class, item.getId())
    );
  }

  @Override
  public void delete(Item item) {
    this.tx(
        session -> {
          session.delete(item);
          return item;
        }
    );
  }
}
