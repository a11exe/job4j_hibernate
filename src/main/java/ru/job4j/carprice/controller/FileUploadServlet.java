/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 29.12.2019
 */
package ru.job4j.carprice.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;
import ru.job4j.carprice.model.User;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.AdServiceImpl;
import ru.job4j.carprice.service.PhotoService;
import ru.job4j.carprice.service.PhotoServiceImpl;

@WebServlet("/upload/*")
public class FileUploadServlet extends HttpServlet {

    private static final Logger LOG = LogManager.getLogger(FileUploadServlet.class);

    // location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "images";

    // upload settings
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

    private final AdService adService = AdServiceImpl.getInstance();
    private final PhotoService photoService = PhotoServiceImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("WEB-INF/views/fileupload.jsp").forward(req, resp);
    }

    /**
     * Upon receiving file upload submission, parses the request to read
     * upload data and saves the file on disk.
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }

        User loggedUser = (User) request.getSession().getAttribute("loggedUser");

        String pathInfo = request.getPathInfo(); // /{value}/test
        String[] pathParts = pathInfo.split("/");
        String adId = pathParts[1]; // {value}

        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);

        // sets maximum size of upload file
        upload.setFileSizeMax(MAX_FILE_SIZE);

        // sets maximum size of request (include file + form data)
        upload.setSizeMax(MAX_REQUEST_SIZE);

        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = getServletContext().getRealPath("")
                + File.separator + UPLOAD_DIRECTORY;

        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            Ad ad = new Ad();
            ad.setId(Integer.valueOf(adId));
            ad = adService.find(ad);
            List<Photo> photos = ad.getPhotos();
            int i = photos.size();
            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    i++;
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
//                        String fileName = new File(item.getName()).getName();
                        String ext = item.getName().substring(item.getName().lastIndexOf(".") + 1);
                        String fileName = "" + adId + "_" + i + "." + ext;
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);

                        Photo photo = new Photo(fileName, ad);
                        photoService.save(photo);
                        photos.add(photo);

                    }
                }
            }
            adService.update(ad, loggedUser);
        } catch (Exception ex) {
            LOG.error("File uploading error {}", ex.getMessage());
        }
        response.sendRedirect("/");
    }
}
