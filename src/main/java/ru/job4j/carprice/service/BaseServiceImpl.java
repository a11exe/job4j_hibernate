package ru.job4j.carprice.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 27.12.2019
 */
@Component
public class BaseServiceImpl implements BaseService {

  private static final Logger LOG = LogManager.getLogger(BaseServiceImpl.class);

  @Override
  public Integer getInt(String str) {
    Integer i = 0;
    try {
      i = Integer.parseInt(str);
    } catch (NumberFormatException e) {
      LOG.error("error parsing to int {}", str);
    }

    return i;
  }

  @Override
  public Long getLong(String str) {
    Long i = 0L;
    try {
      i = Long.parseLong(str);
    } catch (NumberFormatException e) {
      LOG.error("error parsing to int {}", str);
    }

    return i;
  }

  @Override
  public <E extends Enum<E>> boolean isValidEnum(final Class<E> enumClass, final String enumName) {
    if (enumName == null) {
      return false;
    }
    try {
      Enum.valueOf(enumClass, enumName);
      return true;
    } catch (final IllegalArgumentException ex) {
      return false;
    }
  }
}
