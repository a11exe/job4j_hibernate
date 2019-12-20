package ru.job4j.carprice;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 23.12.2019
 */
public class LoadFromAvtio {

  public static void main(String[] args) throws IOException {

    Map<Integer, String> brands = new HashMap<>();

    String url = "https://auto.ru/";
//    String url = "https://auto.ru/moskva/cars/ford/all/";
//
    Document doc = Jsoup.connect(url).get();
//
//    Pattern pattern = Pattern.compile("(itemFilterParams.+?\\\"name\\\":\\\"\\S+?\\\")", Pattern.CASE_INSENSITIVE);
//
//    String text = doc.body().toString();
//    Matcher matcher = pattern.matcher(text);
//    while (matcher.find()) {
//      int start=matcher.start();
//      int end=matcher.end();
//      String modelStr = text.substring(start,end);
//      if (modelStr.contains("model")) {
//        String temp = modelStr.substring(modelStr.indexOf("name")+7);
//        System.out.println(temp.substring(0, temp.indexOf("\"")));
//      }
//    }


    Elements elements = doc.getElementsByClass("IndexMarks__item");

    AtomicInteger i = new AtomicInteger(1);
    elements.forEach(e -> {
      String brand = e.getElementsByClass("IndexMarks__item-name").get(0).text();
      System.out.println("MERGE INTO BRANDS (id, name) KEY(id)");
      System.out.println("VALUES (" + (i.getAndIncrement()) + ", '" + brand + "');");
      System.out.println();
      brands.put(i.get() - 1, e.attr("href"));
    });

    int k = 1;
    for (Map.Entry<Integer, String> entry : brands.entrySet()
        ) {
      Document docBrand = Jsoup.connect(entry.getValue()).get();

      Pattern pattern = Pattern
          .compile("(itemFilterParams.+?\\\"name\\\":\\\"\\S+?\\\")", Pattern.CASE_INSENSITIVE);

      String text = docBrand.body().toString();
      Matcher matcher = pattern.matcher(text);
      while (matcher.find()) {
        int start = matcher.start();
        int end = matcher.end();
        String modelStr = text.substring(start, end);
        if (modelStr.contains("model")) {
          String temp = modelStr.substring(modelStr.indexOf("name") + 7);
          String model = temp.substring(0, temp.indexOf("\"")).replace("'", "");
          System.out.println("MERGE INTO MODELS (id, name, brand_id) KEY(id)");
          System.out.println("VALUES (" + k + ", '" + model + "', " + entry.getKey() + ");");
          System.out.println();
          k++;
        }
      }
    }

  }


}
