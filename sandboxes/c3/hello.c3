import std::io;

fn void greet(String name)
{
    io::prinfn("Hello, %s!", name);
}

fn void main()
{
    greet("World");
}
