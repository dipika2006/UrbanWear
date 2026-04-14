package model;

public class Product {
    private int productId;
    private String name;
    private double price;
    private int categoryId;
    private double discount;
    private String imageUrl;

    public Product(int productId, String name, double price, int categoryId, double discount, String imageUrl) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.categoryId = categoryId;
        this.discount = discount;
        this.imageUrl = imageUrl;
    }

    public int getProductId() { return productId; }
    public String getName() { return name; }
    public double getPrice() { return price; }
    public int getCategoryId() { return categoryId; }
    public double getDiscount() { return discount; }
    public String getImageUrl() { return imageUrl; }
}