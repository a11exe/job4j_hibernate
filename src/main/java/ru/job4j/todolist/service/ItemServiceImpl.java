package ru.job4j.todolist.service;

import java.time.LocalDateTime;
import java.util.List;
import ru.job4j.todolist.dao.ItemDao;
import ru.job4j.todolist.dao.ItemDaoImpl;
import ru.job4j.todolist.model.Item;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 11.12.2019
 */
public class ItemServiceImpl implements ItemService {

  private final ItemDao itemDao = ItemDaoImpl.getInstance();
  private final static ItemService INSTANCE = new ItemServiceImpl();

  private ItemServiceImpl() {
  }

  public static ItemService getInstance() {
    return INSTANCE;
  }


  @Override
  public void createItem(Item item) {
    item.setCreated(LocalDateTime.now());
    itemDao.save(item);
  }

  @Override
  public void doneItem(Item item) {
    item.setDone(true);
    itemDao.update(item);
  }

  @Override
  public List<Item> findAll(boolean onlyActive) {
    return itemDao.findAll(onlyActive);
  }

  @Override
  public Item find(Item item) {
    return itemDao.find(item);
  }

  @Override
  public void delete(Item item) {
    itemDao.delete(item);
  }
}
