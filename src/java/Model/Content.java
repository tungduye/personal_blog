/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author ADMIN
 */
public class Content {

    int ID;
    String Content1, Content2;
    String MainTitle, title1, title2, image, name;
    Date PostingTime;

    public Content() {
        connect();
    }

    public Content(int ID, String Content1, String Content2, String MainTitle, String title1, String title2, Date PostingTime, String image, String name) {
        this.ID = ID;
        this.Content1 = Content1;
        this.Content2 = Content2;
        this.MainTitle = MainTitle;
        this.title1 = title1;
        this.title2 = title2;
        this.PostingTime = PostingTime;
        this.image = image;
        this.name = name;
        connect();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getContent1() {
        return Content1;
    }

    public void setContent1(String Content1) {
        this.Content1 = Content1;
    }

    public String getContent2() {
        return Content2;
    }

    public void setContent2(String Content2) {
        this.Content2 = Content2;
    }

    public String getMainTitle() {
        return MainTitle;
    }

    public void setMainTitle(String MainTitle) {
        this.MainTitle = MainTitle;
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1;
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2;
    }

    public Date getPostingTime() {
        return PostingTime;
    }

    public void setPostingTime(Date PostingTime) {
        this.PostingTime = PostingTime;
    }

    Connection cnn;//Kết nô DB
    Statement stm;//Thực thi câu lệnh SQL
    PreparedStatement pstm;
    ResultSet rs;//Lưu trữ và xử lý dữ liệu

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
        } catch (Exception e) {
            System.out.println("Fail:" + e.getMessage());
        }
    }

    public ArrayList<Content> getListContent(int start, int end) {
        ArrayList<Content> list = new ArrayList<>();
        ArrayList<Content> list1 = new ArrayList<>();
        Content c = new Content();
        list = c.getListContent();
        for (int i = start; i < end; i++) {
            list1.add(list.get(i));
        }
        return list1;
    }

    public ArrayList<Content> getListContent() {
        ArrayList<Content> list = new ArrayList<>();
        try {
//            String strSelect = "select * from Content order by PostingTime desc";
            String strSelect = "select * from Content  ";

            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int ID = rs.getInt(1);
                String Content1 = rs.getString(2);
                String MainTitle = rs.getString(3);
                Date PostingTime = rs.getDate(4);
                String image = rs.getString(5);
                String Content2 = rs.getString(6);
                String title1 = rs.getString(7);
                String title2 = rs.getString(8);
                String name = rs.getString(9);
                list.add(new Content(ID, Content1, Content2, MainTitle, title1, title2, PostingTime, image, name));
//                list.add(new Product(ID, Name, Price, Stock, Image, CategoryID, Discount));
            }
           sorting(list);
            return list;
        } catch (Exception e) {
            System.out.println("getListContent: " + e.getMessage());

        }
        return null;
    }

    public Content getContentByID(String ID) {
        Content c = new Content();
        try {
            String strSelect = "select * from content where ID=? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, ID);
            rs = pstm.executeQuery();
            while (rs.next()) {
                this.ID = Integer.parseInt(ID);
                Content1 = rs.getString(2);
                MainTitle = rs.getString(3);
                PostingTime = rs.getDate(4);
                image = rs.getString(5);
                Content2 = rs.getString(6);
                title1 = rs.getString(7);
                title2 = rs.getString(8);
                name = rs.getString(9);
                c = new Content(this.ID, Content1, Content2, MainTitle, title1, title2, PostingTime, image, name);

            }

        } catch (Exception e) {
            System.out.println("getContentByID: " + e.getMessage());

        }
        return c;
    }

    public Content getContentByName(String name) {
        Content c = new Content();
        try {
            String strSelect = "select * from content where cast([name1] as nvarchar(50)) = ? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, name);
            rs = pstm.executeQuery();
            while (rs.next()) {
                ID = rs.getInt(1);
                Content1 = rs.getString(2);
                MainTitle = rs.getString(3);
                PostingTime = rs.getDate(4);
                image = rs.getString(5);
                Content2 = rs.getString(6);
                title1 = rs.getString(7);
                title2 = rs.getString(8);
//                name= rs.getString(9);
                c = new Content(this.ID, Content1, Content2, MainTitle, title1, title2, PostingTime, image, name);

            }

        } catch (Exception e) {
            System.out.println("getContentByName: " + e.getMessage());

        }
        return c;
    }

    public void add() {
        try {
            String strSelect = "insert into content(ID,MainTitle,title1,title2,"
                    + "Content1,Content2,PostingTime,image,name1)\n"
                    + "values(?,?,?,?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setInt(1, ID);
            pstm.setString(2, MainTitle);
            pstm.setString(3, title1);
            pstm.setString(4, title2);
            pstm.setString(5, Content1);
            pstm.setString(6, Content2);
            pstm.setDate(7, PostingTime);
            pstm.setString(8, image);
            pstm.setString(9, name);
            pstm.execute();

        } catch (Exception e) {
            System.out.println("add: " + e.getMessage());

        }
    }

    public void update() {
        try {
            String strSelect = "update content\n "
                    + "set MainTitle=?,title1=?,title2=?,Content1=?,Content2=?,PostingTime=?,image=?,name1=?\n "
                    + "where ID=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, MainTitle);
            pstm.setString(2, title1);
            pstm.setString(3, title2);
            pstm.setString(4, Content1);
            pstm.setString(5, Content2);
            pstm.setDate(6, PostingTime);
            pstm.setString(7, image);
            pstm.setString(8, name);
            pstm.setInt(9, ID);
            pstm.execute();

        } catch (Exception e) {
            System.out.println("update: " + e.getMessage());

        }
    }

    public void delete(String id) {
        try {
            String strSelect = "delete content where ID=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            pstm.execute();

        } catch (Exception e) {
            System.out.println("delete: " + e.getMessage());

        }
    }
   void sorting(ArrayList<Content> list){
        Collections.sort(list, new Comparator<Content>() {
            public int compare(Content c2, Content c1) {
                return c2.getPostingTime().compareTo(c1.getPostingTime());
            }
        });
    }

}
