package entity;

import java.sql.Timestamp;

public class Product {

    private int productId;
    private String name;
    private double price;
    private int categoryId;
    private double discount;
    private int stock;
    private String imageUrl;
    private Timestamp createdAt;

    public Product(int productId, String name, double price, int categoryId,
                   double discount, int stock, String imageUrl, Timestamp createdAt) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.categoryId = categoryId;
        this.discount = discount;
        this.stock = stock;
        this.imageUrl = imageUrl;
        this.createdAt = createdAt;
    }

    public Product() {}

    public int getProductId() { return productId; }
    public String getName() { return name; }
    public double getPrice() { return price; }
    public int getCategoryId() { return categoryId; }
    public double getDiscount() { return discount; }
    public int getStock() { return stock; }
    public String getImageUrl() { return imageUrl; }
    public Timestamp getCreatedAt() { return createdAt; }

    public void setProductId(int productId) { this.productId = productId; }
    public void setName(String name) { this.name = name; }
    public void setPrice(double price) { this.price = price; }
    public void setCategoryId(int categoryId) { this.categoryId = categoryId; }
    public void setDiscount(double discount) { this.discount = discount; }
    public void setStock(int stock) { this.stock = stock; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
}