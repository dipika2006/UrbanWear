package dao;

import model.OrderItem;
import util.DBConnection;

import java.sql.*;
import java.util.*;

public class OrderItemDAO {

    public void addOrderItem(OrderItem oi) throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "INSERT INTO OrderItems(order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setInt(1, oi.getOrderId());
        ps.setInt(2, oi.getProductId());
        ps.setInt(3, oi.getQuantity());
        ps.setDouble(4, oi.getPrice());

        ps.executeUpdate();
        conn.close();
    }

    public List<OrderItem> getAllOrderItems() throws Exception {
        Connection conn = DBConnection.getConnection();

        String sql = "SELECT * FROM OrderItems";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        List<OrderItem> list = new ArrayList<>();

        while (rs.next()) {
            list.add(new OrderItem(
                    rs.getInt("order_item_id"),
                    rs.getInt("order_id"),
                    rs.getInt("product_id"),
                    rs.getInt("quantity"),
                    rs.getDouble("price")
            ));
        }

        conn.close();
        return list;
    }
}