package dao;

import entity.User;
import java.sql.*;
import java.util.*;
import utils.DBConnection;

public class UserDAO {

    public void addUser(User user) throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "INSERT INTO Users(name, email, password, role) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, user.getName());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPassword());
        ps.setString(4, user.getRole());

        ps.executeUpdate();
        conn.close();
    }

    public List<User> getAllUsers() throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "SELECT * FROM Users";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        List<User> list = new ArrayList<>();

        while (rs.next()) {
            list.add(new User(
                    rs.getInt("user_id"),
                    rs.getString("name"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getString("role"),
                    rs.getBoolean("is_approved"),
                    rs.getTimestamp("created_at")
            ));
        }

        conn.close();
        return list;
    }
}