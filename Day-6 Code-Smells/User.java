public class User {
    private ContactInfo contactInfo;
    private int loyaltyPoints;
    private double accountBalance;
    private List<Order> orders;
    private List<Coupon> coupons;

    public User(ContactInfo contactInfo, int loyaltyPoints, double accountBalance) {
        this.contactInfo = contactInfo;
        this.loyaltyPoints = loyaltyPoints;
        this.accountBalance = accountBalance;
        this.orders = new ArrayList<>();
        this.coupons = new ArrayList<>();
    }

    public void updateContactInfo(ContactInfo contactInfo) {
        this.contactInfo = contactInfo;
    }

    public double calculateDiscount() {
        if (loyaltyPoints > 200) {
            return accountBalance * 0.2;
        } else if (loyaltyPoints > 100) {
            return accountBalance * 0.1;
        } else {
            return accountBalance * 0.05;
        }
    }

    public void printOrders() {
        for (Order order : orders) {
            order.print();
        }
    }

    public void applyCoupons() {
        for (Coupon coupon : coupons) {
            coupon.apply();
        }
    }

    public void addOrder(Order order) {
        orders.add(order);
    }

    public void addCoupon(Coupon coupon) {
        coupons.add(coupon);
    }
}