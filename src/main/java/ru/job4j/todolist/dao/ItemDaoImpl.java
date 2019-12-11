package ru.job4j.todolist.dao;

import java.util.ArrayList;
import java.util.List;
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

  @Override
  public void save(Item item) {
    Transaction transaction = null;
    try (Session session = HibernateUtil.getInstance().getSessionFactory().openSession()) {
      transaction = session.beginTransaction();
      session.save(item);
      transaction.commit();
    } catch (Exception e) {
      LOG.error("error saving item {} msg: {}", item, e.getMessage());
      if (transaction != null) {
        transaction.rollback();
      }
    }
  }

  @Override
  public void update(Item item) {
    Transaction transaction = null;
    try (Session session = HibernateUtil.getInstance().getSessionFactory().openSession()) {
      transaction = session.beginTransaction();
      session.update(item);
      transaction.commit();
    } catch (Exception e) {
      LOG.error("error updating item {} msg: {}", item, e.getMessage());
      if (transaction != null) {
        transaction.rollback();
      }
    }
  }

  @Override
  public List<Item> findAll(boolean onlyActive) {
    Transaction transaction = null;
    List<Item> items = new ArrayList<>();
    try (Session session = HibernateUtil.getInstance().getSessionFactory().openSession()) {
      transaction = session.beginTransaction();
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
      items = query.getResultList();
      transaction.commit();
    } catch (Exception e) {
      LOG.error("error find all items {}", e.getMessage());
      if (transaction != null) {
        transaction.rollback();
      }
    }
    return items;
  }

  @Override
  public Item find(Item item) {
    Transaction transaction = null;
    try (Session session = HibernateUtil.getInstance().getSessionFactory().openSession()) {
      transaction = session.beginTransaction();
      item = session.get(Item.class, item.getId());
      transaction.commit();
    } catch (Exception e) {
      LOG.error("error saving item {} msg: {}", item, e.getMessage());
      if (transaction != null) {
        transaction.rollback();
      }
    }
    return item;
  }

  @Override
  public void delete(Item item) {
    Transaction transaction = null;
    try (Session session = HibernateUtil.getInstance().getSessionFactory().openSession()) {
      transaction = session.beginTransaction();
      session.delete(item);
      transaction.commit();
    } catch (Exception e) {
      LOG.error("error saving item {} msg: {}", item, e.getMessage());
      if (transaction != null) {
        transaction.rollback();
      }
    }
  }
}
