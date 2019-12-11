package ru.job4j.todolist.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 12.12.2019
 */
public class CharsetFilter implements Filter {

  private String encoding;

  public void init(FilterConfig config) throws ServletException {
    encoding = config.getInitParameter("requestEncoding");
    if (encoding == null) {
      encoding = "UTF-8";
    }
  }

  public void doFilter(ServletRequest request, ServletResponse response, FilterChain next)
      throws IOException, ServletException {
    if (null == request.getCharacterEncoding()) {
      request.setCharacterEncoding(encoding);
    }
    if (null == response.getCharacterEncoding()) {
      response.setCharacterEncoding(encoding);
    }
    if (null == response.getContentType()) {
      response.setContentType("text/json; " + encoding);
    }

    next.doFilter(request, response);
  }

  public void destroy() {

  }
}
