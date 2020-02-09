/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 09.02.2020
 */
package ru.job4j.carprice.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import ru.job4j.carprice.model.User;

import javax.servlet.http.HttpSession;

public class SecurityUtil {

    public static User getLoggedUser() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession(true);
        return (User) session.getAttribute("loggedUser");
    }

    public static void setLoggedUser(User user) {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession(true);
        session.setAttribute("loggedUser", user);
    }


}
