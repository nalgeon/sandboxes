import std::io;

fn void greet(String name)
{
    io::printfn("Hello, %s!", name);
}

fn void main()
{
    greet("World");
}
