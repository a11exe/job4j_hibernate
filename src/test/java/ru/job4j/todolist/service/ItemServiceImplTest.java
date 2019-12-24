package ru.job4j.todolist.service;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.hamcrest.collection.IsIterableContainingInOrder.contains;


import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;
import ru.job4j.todolist.model.Item;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class ItemServiceImplTest {

  private static final Logger LOG = LogManager.getLogger(ItemServiceImplTest.class);

  @Test
  public void findAll() {
    ItemService service = ItemServiceImpl.getInstance();
    Item item = new Item("itemservice #5");
    service.createItem(item);
    Item item2 = new Item("itemservice #6");
    service.createItem(item2);
    List<Item> items = service.findAll(false);
    items.forEach(i -> LOG.info("{}", i));
    assertThat(items, contains(item2, item));
  }

  @Test
  public void createItem() {
    ItemService service = ItemServiceImpl.getInstance();
    Item item = new Item("itemservice #1");
    service.createItem(item);
    assertThat(service.find(item), is(item));
    assertNotNull(service.find(item).getCreated());
    service.delete(item);
  }

  @Test
  public void doneItem() {
    ItemService service = ItemServiceImpl.getInstance();
    Item item = new Item("itemservice #2");
    service.createItem(item);
    assertThat(service.find(item), is(item));
    assertFalse(service.find(item).isDone());
    service.doneItem(item);
    assertTrue(service.find(item).isDone());
    service.delete(item);
  }

  @Test
  public void findAllOnlyActive() {
    ItemService service = ItemServiceImpl.getInstance();
    int active = service.findAll(true).size();
    Item item = new Item("itemservice #7");
    service.createItem(item);
    service.doneItem(item);
    assertThat(service.findAll(true).size(), is(active));
    service.delete(item);
  }
}