using System;

public class Greeter {
    public static void Greet(string name) {
        Console.WriteLine($"Hello, {name}!");
    }

    public static void Main(string[] args) {
        Greet("World");
    }
}
