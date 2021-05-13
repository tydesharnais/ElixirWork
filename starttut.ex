defmodule M do
  def hello do
    IO.puts("Hello world")
    name = IO.gets("What is your name?")
    IO.puts("Hello #{name}")
    
  end
end
