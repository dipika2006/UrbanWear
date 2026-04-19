package service;

import java.util.Collections;
import java.util.List;

import entity.Product;
import entity.User;
import entity.Order;

public class AdminService {

    // Dashboard stats (dummy for now)
    public int getTotalUsers() {
        return 10;
    }

    public int getTotalProducts() {
        return 25;
    }

    public int getTotalOrders() {
        return 5;
    }

    // Product list (temporary)
    public List<Product> getAllProducts() {
        return Collections.emptyList();
    }

    // User list (temporary)
    public List<User> getAllUsers() {
        return Collections.emptyList();
    }

    // Order list (temporary)
    public List<Order> getAllOrders() {
        return Collections.emptyList();
    }
}