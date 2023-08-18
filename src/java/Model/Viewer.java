/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author ADMIN
 */
public class Viewer {

    int ID;
    String Name;
    String Email;
    String PhoneNumber;
    String Message;

    public Viewer() {
        connect();
    }

    public Viewer(int ID, String Name, String Email, String PhoneNumber, String Message) {
        this.ID = ID;
        this.Name = Name;
        this.Email = Email;
        this.PhoneNumber = PhoneNumber;
        this.Message = Message;
        connect();
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String Message) {
        this.Message = Message;
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

    public void add() {
        try {
            String strSelect = "insert into viewer1 (Name,Email,PhoneNumber,Message)\n"
                    + "values (?,?,?,?)";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, Name);
            pstm.setString(2, Email);
            pstm.setString(3, PhoneNumber);
            pstm.setString(4, Message);
            pstm.execute();

        } catch (Exception e) {
            System.out.println("add: " + e.getMessage());

        }

    }

    public ArrayList<Viewer> getListViewer() {
          ArrayList<Viewer> list = new ArrayList<>();
        try {
            String strSelect = "select * from viewer1 ";

            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int ID = rs.getInt(1);
                String Name = rs.getString(2);
                String Email = rs.getString(3);
                String PhoneNumber = rs.getString(4);
                String Message = rs.getString(5);
                list.add(new Viewer(ID, Name, Email, PhoneNumber, Message));
//                list.add(new Product(ID, Name, Price, Stock, Image, CategoryID, Discount));
            }
            return list;
        } catch (Exception e) {
            System.out.println("getListViewer: " + e.getMessage());

        }
        return null;

    
    }
    
    
}

