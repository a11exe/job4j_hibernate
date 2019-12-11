package ru.job4j.todolist.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.stream.Collectors;
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
public class ItemDeleteController extends HttpServlet {

  private final ItemService service = ItemServiceImpl.getInstance();

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {

    BufferedReader reader = new BufferedReader(new InputStreamReader(req.getInputStream()));
    String requestData = reader.lines().collect(Collectors.joining());
    ObjectMapper mapper = new ObjectMapper();
    Integer id = mapper.readValue(requestData, Integer.class);
    service.delete(new Item(id));
  }
}
