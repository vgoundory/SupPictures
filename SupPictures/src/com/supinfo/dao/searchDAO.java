package com.supinfo.dao;

import com.supinfo.beans.Picture;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class searchDAO {
    public List<Picture> searchPictures(String searchString)  {
        Picture picture = null;
        List<Picture> pictures = new ArrayList<>();
        String sql;

        try {
            Connection connection = DBConnection.getConnectionToDatabase();

            if (searchString != ""){
                sql = "select * from image_table where filename like '%"+searchString+"%';";

            }else{
                sql = "SELECT * FROM `image_table` ORDER BY uploadTime DESC LIMIT 0, 5;";

            }



            Statement statement = connection.createStatement();
            ResultSet set = statement.executeQuery(sql);

            while (set.next()){
                picture = new Picture();
                picture.setIdpicture(set.getInt("id"));
                picture.setDescription(set .getString("details"));
                picture.setName(set.getString("filename"));
                pictures.add(picture);


            }

        }
        catch (SQLException exception){
            exception.printStackTrace();

        }
        return pictures;


    }
}
