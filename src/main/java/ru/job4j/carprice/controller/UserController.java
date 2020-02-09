/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 09.02.2020
 */
package ru.job4j.carprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.job4j.carprice.model.User;
import ru.job4j.carprice.service.ServiceAnswer;
import ru.job4j.carprice.service.UserService;
import ru.job4j.carprice.util.SecurityUtil;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("login")
    public String login(
            User user,
            Model model) {

        ServiceAnswer<User> serviceAnswer = userService.signIn(user);

        if (serviceAnswer.isNoErrors()) {
            SecurityUtil.setLoggedUser(serviceAnswer.getValue());
            return "redirect:ads";
        } else {
            model.addAttribute("login", user.getLogin());
            model.addAttribute("msg", serviceAnswer.getMessages());
            return "login";
        }
    }

    @GetMapping("logout")
    public String logout() {
        SecurityUtil.setLoggedUser(null);
        return "redirect:ads";
    }

    @GetMapping("signup")
    public String signUpForm() {
        return "signup";
    }

    @PostMapping("signup")
    public String signup(
            User user,
            Model model) {

        ServiceAnswer<User> serviceAnswer = userService.signUp(user);

        if (serviceAnswer.isNoErrors()) {
            SecurityUtil.setLoggedUser(serviceAnswer.getValue());
            return "redirect:login";
        } else {
            model.addAttribute("user", user);
            model.addAttribute("msg", serviceAnswer.getMessages());
            return "signup";
        }
    }

    @GetMapping("account")
    public String account(Model model) {
        User user = SecurityUtil.getLoggedUser();
        model.addAttribute("user", userService.findWithAds(user));
        return "account";
    }

    @PostMapping("account")
    public String editAccount(User user, Model model) {

        User loggedUser = SecurityUtil.getLoggedUser();

        User userDb = new User();
        userDb.setId(loggedUser.getId());
        userDb = userService.find(userDb);
        userDb.setName(user.getName());
        userDb.setLogin(user.getLogin());
        userDb.setEmail(user.getEmail());
        userDb.setPhone(user.getPhone());
        userDb.setPassword(user.getPassword());

        ServiceAnswer<User> serviceAnswer = userService.update(userDb);

        if (serviceAnswer.isNoErrors()) {
            return "redirect:/ads";
        } else {
            model.addAttribute("msg", serviceAnswer.getMessages());
            return "account";
        }
    }


}
