package com.supinfo.beans;

import java.sql.Blob;
import java.util.Date;

public class Picture {
    private int idpicture;
    private String name;
    private String description;
    private Date datePublished;
    private String category;
    private Blob image;
    private String base64Image;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePublished() {
        return datePublished;
    }

    public void setDatePublished(Date datePublished) {
        this.datePublished = datePublished;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void add(Picture picture) {
    }

    public Blob getImage() {
        return image;
    }

    public void setImage(Blob image) {
        this.image = image;
    }

    public String getBase64Image() {
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

    public int getIdpicture() {
        return idpicture;
    }

    public void setIdpicture(int idpicture) {
        this.idpicture = idpicture;
    }
}
