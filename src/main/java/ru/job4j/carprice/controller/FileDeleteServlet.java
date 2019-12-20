/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 29.12.2019
 */
package ru.job4j.carprice.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;
import ru.job4j.carprice.model.User;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;
import ru.job4j.carprice.service.PhotoService;
import ru.job4j.carprice.service.PhotoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deletephoto")
public class FileDeleteServlet extends HttpServlet {

    private static final Logger LOG = LogManager.getLogger(FileDeleteServlet.class);

    // location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "images";


    private final AdService adService = AdServiceImpl.getInstance();
    private final PhotoService photoService = PhotoServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int idPhoto = Integer.parseInt(req.getParameter("id"));
        User loggedUser = (User) req.getSession().getAttribute("loggedUser");
        Ad ad = photoService.find(new Photo(idPhoto)).getAd();
        photoService.delete(new Photo(idPhoto), loggedUser);
        req.setAttribute("id", ad.getId());
        req.setAttribute("photos", photoService.findByAd(ad));
        req.getRequestDispatcher("WEB-INF/views/fileupload.jsp").forward(req, resp);
    }

}
