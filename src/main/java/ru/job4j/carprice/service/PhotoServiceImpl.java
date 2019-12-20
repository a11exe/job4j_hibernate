/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 30.12.2019
 */
package ru.job4j.carprice.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.dao.PhotoDao;
import ru.job4j.carprice.dao.PhotoDaoImpl;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;
import ru.job4j.carprice.model.User;

import java.util.List;

public class PhotoServiceImpl implements PhotoService {

    private static final Logger LOG = LogManager.getLogger(PhotoServiceImpl.class);
    private final PhotoDao photoDao = PhotoDaoImpl.getInstance();

    private final static PhotoService INSTANCE = new PhotoServiceImpl();

    public static PhotoService getInstance() {
        return INSTANCE;
    }

    private PhotoServiceImpl() {
    }

    @Override
    public List<Photo> findByAd(Ad ad) {
        return photoDao.findByAd(ad);
    }

    @Override
    public Photo find(Photo photo) {
        return photoDao.find(photo);
    }

    @Override
    public Photo load(Photo photo) {
        return photoDao.find(photo);
    }

    @Override
    public List<Photo> findAll() {
        return photoDao.findAll();
    }

    @Override
    public void save(Photo photo) {
        photoDao.save(photo);
    }

    @Override
    public void update(Photo photo) {
        photoDao.update(photo);
    }

    @Override
    public void delete(Photo photo, User loggedUser) {
        Photo photoDb = photoDao.find(photo);
        if (photoDb.getAd().getUser().equals(loggedUser)) {
            photoDao.delete(photo);
        }
    }
}
