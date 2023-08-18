/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class Detail {
    String Name;
    float Staytime;
    float Distance;
    String Fragrant;

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public float getStaytime() {
        return Staytime;
    }

    public void setStaytime(float Staytime) {
        this.Staytime = Staytime;
    }

    public float getDistance() {
        return Distance;
    }

    public void setDistance(float Distance) {
        this.Distance = Distance;
    }

    public String getFragrant() {
        return Fragrant;
    }

    public void setFragrant(String Fragrant) {
        this.Fragrant = Fragrant;
    }

    public Detail(String Name, float Staytime, float Distance, String Fragrant) {
        this.Name = Name;
        this.Staytime = Staytime;
        this.Distance = Distance;
        this.Fragrant = Fragrant;
        connect();
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
}
