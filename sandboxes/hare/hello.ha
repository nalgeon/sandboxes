use fmt;

fn greet(user: str) void = {
	fmt::printfln("Hello, {}!", user)!;
};

export fn main() void = {
	greet("World");
};
