package service;

import models.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceiplm implements ProductService {
    static final String JDBC_Driver = "com.mysql.jdbc.Driver";
    static final String url = "jdbc:mysql://localhost:3306/productmanager?useSSL=false";

    static final String user = "root";
    static final String password = "phantiensy";

    @Override
    public List<Product> findAll() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        Statement statement = connection.createStatement();

        String query = "select * from products";
        ResultSet resultSet = statement.executeQuery(query);

        List<Product> products = new ArrayList<>();
        while (resultSet.next()) {
            Product product = new Product();
            product.setId(resultSet.getInt("id"));
            product.setName(resultSet.getString("name_product"));
            product.setPrice(resultSet.getDouble("price"));
            product.setCategory_id(resultSet.getInt("category_id"));

            products.add(product);
        }
        resultSet.close();
        statement.close();
        connection.close();
        return products;
    }

    @Override
    public void save(Product product) throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        String query = "insert into products(name_product, price, category_id) values (?, ?, ?)";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, product.getName());
        statement.setDouble(2, product.getPrice());
        statement.setInt(3, product.getCategory_id());

        statement.executeUpdate();
        statement.close();
        connection.close();
    }

    @Override
    public Product findById(int id) throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        String query = "select * from products where id=?";
        PreparedStatement statement = connection.prepareStatement(query);

        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();

        Product product = new Product();
        while (resultSet.next()) {
            product.setId(resultSet.getInt("id"));
            product.setName(resultSet.getString("name_product"));
            product.setPrice(resultSet.getDouble("price"));
            product.setCategory_id(resultSet.getInt("category_id"));
        }
        resultSet.close();
        statement.close();
        connection.close();
        return product;
    }

    @Override
    public void update(int id, Product product) throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        String sql = "update products set name_product = ?, price = ?, category_id = ? where id=?";

        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, product.getName());
        statement.setDouble(2, product.getPrice());
        statement.setInt(3, product.getCategory_id());
        statement.setInt(4, product.getId());

        statement.executeUpdate();
        statement.close();
        connection.close();
    }

    @Override
    public void remove(int id) throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_Driver);
        Connection connection = DriverManager.getConnection(url, user, password);

        String query = "delete from products where id=?";

        PreparedStatement statement = connection.prepareStatement(query);
        statement.setInt(1, id);
        statement.executeUpdate();

        statement.close();
        connection.close();
    }
}
