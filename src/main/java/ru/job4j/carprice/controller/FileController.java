/**
 * @author Alexander Abramov (alllexe@mail.ru)
 * @version 1
 * @since 09.02.2020
 */
package ru.job4j.carprice.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.job4j.carprice.model.Ad;
import ru.job4j.carprice.model.Photo;
import ru.job4j.carprice.service.AdService;
import ru.job4j.carprice.service.PhotoService;
import ru.job4j.carprice.util.SecurityUtil;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class FileController {

    private static final Logger LOG = LogManager.getLogger(FileController.class);

    // location to store file uploaded
    private static final String UPLOAD_DIRECTORY = "images";

    @Autowired
    private AdService adService;
    @Autowired
    private PhotoService photoService;
    @Autowired
    ServletContext context;

    @GetMapping("/upload")
    public String fileUploadForm() {
        return "fileupload";
    }

    @PostMapping("/upload/{adId}")
    public String fileUpload(
            @RequestParam("files") MultipartFile[] files,
            @PathVariable("adId") Long adId,
            Model modelMap) throws IOException {

        String uploadPath = context.getRealPath("")
                + File.separator + UPLOAD_DIRECTORY;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        Ad ad = new Ad();
        ad.setId(adId);
        ad = adService.find(ad);
        List<Photo> photos = ad.getPhotos();
        int i = photos.size();

        for (MultipartFile file : files
                ) {
            if (file != null && !file.getOriginalFilename().isEmpty()) {
                i++;
                String filename = file.getOriginalFilename();
                String ext = filename.substring(filename.lastIndexOf(".") + 1);
                String fileName = "" + adId + "_" + i + "." + ext;
                String resultFileName = uploadPath + File.separator + fileName;

                file.transferTo(new File(resultFileName));

                Photo photo = new Photo(fileName, ad);
                photoService.save(photo);
                photos.add(photo);
            }
        }

        adService.update(ad, SecurityUtil.getLoggedUser());
        return "redirect:/ads";
    }

    @GetMapping("/deletephoto")
    public String deletePhoto(
            @RequestParam("id") Long idPhoto,
            Model model) {

        Ad ad = photoService.find(new Photo(idPhoto)).getAd();
        photoService.delete(new Photo(idPhoto), SecurityUtil.getLoggedUser());
        model.addAttribute("id", ad.getId());
        model.addAttribute("photos", photoService.findByAd(ad));
        return "fileupload";
    }

}
