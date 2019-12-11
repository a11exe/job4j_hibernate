package ru.job4j.todolist.service;

import java.util.List;
import ru.job4j.todolist.model.Item;

public interface ItemService {

  void createItem(Item item);

  void doneItem(Item item);

  List<Item> findAll(boolean onlyActive);

  Item find(Item item);

  void delete(Item item);
}
