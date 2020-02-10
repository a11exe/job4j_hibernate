package ru.job4j.carprice.dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.User;

@Repository
public interface AdRepository extends CrudRepository<Ad, Long> {

  List<Ad> findAll();

}
