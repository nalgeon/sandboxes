public class Main {
    public static void greet(String name) {
        String msg  = String.format("Hello, %s!", name);
        System.out.println(msg);
    }

    public static void main(String[] args) {
        greet("World");
    }
}
