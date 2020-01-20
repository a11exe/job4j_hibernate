package ru.job4j.carprice.service;

import java.util.Map;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 26.12.2019
 */
public class ServiceAnswer<T> {

  private boolean noErrors;
  private Map<String, String> messages;
  private T value;

  public ServiceAnswer(boolean noErrors) {
    this.noErrors = noErrors;
  }

  public ServiceAnswer(boolean noErrors, Map<String, String> messages) {
    this.noErrors = noErrors;
    this.messages = messages;
  }

  public boolean isNoErrors() {
    return noErrors;
  }

  public void setNoErrors(boolean noErrors) {
    this.noErrors = noErrors;
  }

  public Map<String, String> getMessages() {
    return messages;
  }

  public void setMessages(Map<String, String> messages) {
    this.messages = messages;
  }

  public T getValue() {
    return value;
  }

  public void setValue(T value) {
    this.value = value;
  }
}
