package ru.job4j.carprice.service;

public interface BaseService {

  Integer getInt(String str);

  <E extends Enum<E>> boolean isValidEnum(final Class<E> enumClass, final String enumName);

}
