package entity;

import java.sql.Timestamp;

public class User {

    private int userId;
    private String name;
    private String email;
    private String password;
    private String role;
    private boolean isApproved;
    private Timestamp createdAt;

    // Constructor
    public User(int userId, String name, String email, String password, String role, boolean isApproved, Timestamp createdAt) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
        this.isApproved = isApproved;
        this.createdAt = createdAt;
    }

    public User() {}

    // Getters
    public int getUserId() { return userId; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getPassword() { return password; }
    public String getRole() { return role; }
    public boolean isApproved() { return isApproved; }
    public Timestamp getCreatedAt() { return createdAt; }

    // Setters
    public void setUserId(int userId) { this.userId = userId; }
    public void setName(String name) { this.name = name; }
    public void setEmail(String email) { this.email = email; }
    public void setPassword(String password) { this.password = password; }
    public void setRole(String role) { this.role = role; }
    public void setApproved(boolean approved) { isApproved = approved; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}