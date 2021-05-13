defmodule M do

  def main do
    #Anonymous function
    add = fn a,b -> a + b end
    IO.puts(add.(1,2))
    is_function(add)
  end

  def lists do
    #list heads and tails
    list1 = [1,2,3,4]
    list2 = [5,6,7,8]

    #List concatenation "++ or --"
    list3 = list1 ++ list2

    #Take a peek with inspect
    #IO.write to not new line
    IO.inspect list3
    IO.puts hd(list1)
    IO.inspect tl(list1)

    #check if value is inside of a list
    IO.puts 6 in list3

    #Mapping values, creating declaring new lists and looping 
    list5 = Enum.map(list3, fn x -> x * 2 end)
    loop(list5)

    #Another headsplitter
    [head | tail] = list3
    IO.puts "Head: #{head}"
    IO.write "Tail: "
    IO.inspect tail

    #List enumeration

    #Using Recursion
    loop(list1)

    #Using Enum
    words = ["Random","words","in","a","list"]
    Enum.each words, fn word ->
      IO.puts word
    end

  end

  def youngTuples do
    #tuples
    my_stats = {125,6.25,:Tyler}
    IO.puts "Tuple: #{is_tuple(my_stats)}"

    #remember NO state change, always create a new variable
    my_stats2 = Tuple.append(my_stats, 22)
    IO.puts "Age #{elem(my_stats2,3)}"
    IO.puts "Size #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)
    my_stats4 = Tuple.insert_at(my_stats3,0,1972)

    #pattern matching
    {weight, height, name} = {175, 6, "Tyler"}
    IO.puts "Weight: #{weight} Height: #{height} Name: #{name}"
  end

  #Recusive Loop call
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def loop([]), do: nil

end
