package dao;

import model.Category;
import util.DBConnection;

import java.sql.*;
import java.util.*;

public class CategoryDAO {

    public void addCategory(Category c) throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "INSERT INTO Categories(category_name) VALUES (?)";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, c.getCategoryName());

        ps.executeUpdate();
        conn.close();
    }

    public List<Category> getAllCategories() throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "SELECT * FROM Categories";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        List<Category> list = new ArrayList<>();

        while (rs.next()) {
            list.add(new Category(
                    rs.getInt("category_id"),
                    rs.getString("category_name")
            ));
        }

        conn.close();
        return list;
    }
}