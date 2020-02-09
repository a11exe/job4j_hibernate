/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 30.12.2019
 */
package ru.job4j.carprice.dao;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Repository;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;

import java.util.List;

@Repository
public class PhotoDaoImpl extends AbstractDao implements PhotoDao {

    private static final Logger LOG = LogManager.getLogger(PhotoDaoImpl.class);

    @Override
    public List<Photo> findByAd(Ad ad) {
        return super.findAllBy("from Photo p where p.ad =: ad", "ad", ad);
    }

    @Override
    public Photo find(Photo photo) {
        return super.find(Photo.class, photo.getId());
    }

    @Override
    public Photo load(Photo photo) {
        return super.load(Photo.class, photo.getId());
    }

    @Override
    public List<Photo> findAll() {
        return super.findAll("Photo");
    }

    @Override
    public void save(Photo photo) {
        super.save(photo);
    }

    @Override
    public void update(Photo photo) {
        super.update(photo);
    }

    @Override
    public void delete(Photo photo) {
        super.delete(photo);
    }
}
