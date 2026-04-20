package dao;

import entity.Order;
import utils.DBConnection;

import java.sql.*;
import java.util.*;

public class OrderDAO {

    public void addOrder(Order o) throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "INSERT INTO Orders(user_id, order_date, total_amount, status) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setInt(1, o.getUserId());
        ps.setDate(2, new java.sql.Date(o.getOrderDate().getTime()));
        ps.setDouble(3, o.getTotalAmount());
        ps.setString(4, o.getStatus());

        ps.executeUpdate();
        conn.close();
    }

    public List<Order> getAllOrders() throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "SELECT * FROM Orders";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        List<Order> list = new ArrayList<>();

        while (rs.next()) {
            list.add(new Order(
                    rs.getInt("order_id"),
                    rs.getInt("user_id"),
                    rs.getDate("order_date"),
                    rs.getDouble("total_amount"),
                    rs.getString("status")
            ));
        }

        conn.close();
        return list;
    }
}