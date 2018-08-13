package service;

import models.Acount;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AcountServiceiplm implements AcountService {

    static final String JDBC_Driver = "com.mysql.jdbc.Driver";
    static final String url = "jdbc:mysql://localhost:3306/acountmanager?useSSL=false";

    static final String user = "root";
    static final String password = "phantiensy";
    @Override
    public List<Acount> findAllAcount() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);

        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();

        String query = "select * from acounts";
        ResultSet resultSet = statement.executeQuery(query);

        List<Acount> acounts = new ArrayList<>();

        while (resultSet.next()) {
            Acount acount = new Acount();
            acount.setName(resultSet.getString("name"));
            acount.setUser(resultSet.getString("user"));
            acount.setPass(resultSet.getString("pass"));
            acount.setEmail(resultSet.getString("email"));
            acount.setPhoneNumber(resultSet.getString("phoneNumber"));
            acount.setBirthDay(resultSet.getString("birthDay"));

            acounts.add(acount);
        }
        resultSet.close();
        statement.close();
        connection.close();
        return acounts;
    }

    @Override
    public void saveAcount(Acount acount) throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        String query = "insert into acounts VALUES  (?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, acount.getName());
        statement.setString(2, acount.getUser());
        statement.setString(3, acount.getPass());
        statement.setString(4, acount.getEmail());
        statement.setString(5, acount.getPhoneNumber());
        statement.setString(6, acount.getBirthDay());

        statement.executeUpdate();
        statement.close();
        connection.close();
    }

    @Override
    public void updateAcount(int id) throws ClassNotFoundException, SQLException {

    }
}
