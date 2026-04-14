package dao;

import model.Product;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    // =========================
    // ADD PRODUCT
    // =========================
    public void addProduct(Product p) throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "INSERT INTO Products(name, price, category_id, discount, image_url) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, p.getName());
        ps.setDouble(2, p.getPrice());
        ps.setInt(3, p.getCategoryId());
        ps.setDouble(4, p.getDiscount());
        ps.setString(5, p.getImageUrl());

        ps.executeUpdate();
        conn.close();
    }

    // =========================
    // GET ALL PRODUCTS
    // =========================
    public List<Product> getAllProducts() throws Exception {
        Connection conn = DBConnection.getConnection();

        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM Products";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {
            Product p = new Product(
                    rs.getInt("product_id"),
                    rs.getString("name"),
                    rs.getDouble("price"),
                    rs.getInt("category_id"),
                    rs.getDouble("discount"),
                    rs.getString("image_url")
            );

            list.add(p);
        }

        conn.close();
        return list;
    }

    // =========================
    // GET BY CATEGORY (VERY USEFUL ⭐)
    // =========================
    public List<Product> getByCategory(int categoryId) throws Exception {
        Connection conn = DBConnection.getConnection();

        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM Products WHERE category_id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, categoryId);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            list.add(new Product(
                    rs.getInt("product_id"),
                    rs.getString("name"),
                    rs.getDouble("price"),
                    rs.getInt("category_id"),
                    rs.getDouble("discount"),
                    rs.getString("image_url")
            ));
        }

        conn.close();
        return list;
    }
}