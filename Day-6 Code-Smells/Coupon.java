public class Coupon {
    private String code;

    public Coupon(String code) {
        this.code = code;
    }

    public void apply() {
        System.out.println("Applying coupon: " + code);
    }
}