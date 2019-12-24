package ru.job4j.todolist.dao;

import java.util.List;
import ru.job4j.todolist.model.Item;

public interface ItemDao {

  void save(Item item);

  void update(Item item);

  List<Item> findAll(boolean onlyActive);

  Item find(Item item);

  void delete(Item item);

}
