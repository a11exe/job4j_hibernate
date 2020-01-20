package ru.job4j.carprice.dao;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 20.01.2020
 */
public class Filter {

  private final String brandName;
  private final boolean hasPhotoOnly;
  private final boolean lastDayOnly;

  public Filter(String brandName, boolean hasPhotoOnly, boolean lastDayOnly) {
    this.brandName = brandName;
    this.hasPhotoOnly = hasPhotoOnly;
    this.lastDayOnly = lastDayOnly;
  }

  public String getBrandName() {
    return brandName;
  }

  public boolean isHasPhotoOnly() {
    return hasPhotoOnly;
  }

  public boolean isLastDayOnly() {
    return lastDayOnly;
  }

  public boolean isEmpty() {
    return brandName == null && !hasPhotoOnly && !lastDayOnly;
  }

}
