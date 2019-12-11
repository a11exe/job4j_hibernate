package ru.job4j.todolist.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.job4j.todolist.model.Item;
import ru.job4j.todolist.service.ItemService;
import ru.job4j.todolist.service.ItemServiceImpl;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 12.12.2019
 */
public class ItemAddController extends HttpServlet {

  private final ItemService service = ItemServiceImpl.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    ObjectMapper mapper = new ObjectMapper();
    Item item = mapper.readValue(req.getParameter("item"), Item.class);
    service.createItem(item);
  }
}