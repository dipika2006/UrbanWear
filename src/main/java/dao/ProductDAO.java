package dao;

import entity.Product;
import utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    // 🔹 Get random products (Home page)
    public List<Product> getRandomProducts(int limit) throws SQLException {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM products ORDER BY RAND() LIMIT ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(mapProduct(rs));
            }
        }

        return list;
    }

    // 🔹 Get all products
    public List<Product> getAllProducts() throws SQLException {
        List<Product> list = new ArrayList<>();

        String sql = "SELECT * FROM products";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                list.add(mapProduct(rs));
            }
        }

        return list;
    }

    // 🔹 Get product by ID
    public Product getProductById(int id) throws SQLException {
        String sql = "SELECT * FROM products WHERE product_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return mapProduct(rs);
            }
        }

        return null;
    }

    // 🔹 Map ResultSet → Product
    private Product mapProduct(ResultSet rs) throws SQLException {
        Product p = new Product();
        p.setProductId(rs.getInt("product_id"));
        p.setName(rs.getString("name"));
        p.setPrice(rs.getDouble("price"));
        p.setImageUrl(rs.getString("image_url"));
        return p;
    }
}