defmodule Greeter do
  def greet(name) do
    IO.puts("Hello, #{name}!")
  end
end

Greeter.greet("World")
