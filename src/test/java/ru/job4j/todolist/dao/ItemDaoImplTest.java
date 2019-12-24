package ru.job4j.todolist.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.hamcrest.collection.IsIterableContainingInOrder.contains;

import org.junit.Test;
import ru.job4j.todolist.model.Item;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class ItemDaoImplTest {

  @Test
  public void save() {
    ItemDao itemDao = ItemDaoImpl.getInstance();
    Item item = new Item("todo #1");
    itemDao.save(item);
    assertThat(itemDao.find(item), is(item));
    itemDao.delete(item);
  }

  @Test
  public void update() {
    ItemDao itemDao = ItemDaoImpl.getInstance();
    Item item = new Item("todo #2");
    itemDao.save(item);
    Item updated = new Item();
    updated.setId(item.getId());
    item.setDescription("todo #3");
    itemDao.update(item);
    assertThat(itemDao.find(updated).getDescription(), is("todo #3"));
    itemDao.delete(item);
  }

  @Test
  public void findAll() {
    ItemDao itemDao = ItemDaoImpl.getInstance();
    Item item = new Item("todo #5");
    itemDao.save(item);
    Item item2 = new Item("todo #6");
    itemDao.save(item2);
    assertThat(itemDao.findAll(false), contains(item, item2));
    itemDao.delete(item);
    itemDao.delete(item2);
  }

  @Test
  public void findAllOnlyActive() {
    ItemDao itemDao = ItemDaoImpl.getInstance();
    int active = itemDao.findAll(true).size();
    Item item = new Item("todo #7");
    item.setDone(true);
    itemDao.save(item);
    assertThat(itemDao.findAll(true).size(), is(active));
    itemDao.delete(item);
  }

  @Test
  public void delete() {
    ItemDao itemDao = ItemDaoImpl.getInstance();
    Item item = new Item("todo #7");
    itemDao.save(item);
    itemDao.delete(item);
    assertNull(itemDao.find(item));
  }

}