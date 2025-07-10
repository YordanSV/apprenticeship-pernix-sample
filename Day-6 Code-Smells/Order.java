public class Order {
    private String description;

    public Order(String description) {
        this.description = description;
    }

    public void print() {
        System.out.println("Order: " + description);
    }
}
