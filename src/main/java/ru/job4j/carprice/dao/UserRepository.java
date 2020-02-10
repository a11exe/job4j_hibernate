package ru.job4j.carprice.dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.job4j.carprice.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

  User findByLogin(User user);

  User findByEmail(User user);

  List<User> findAll();

}
