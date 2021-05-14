defmodule M do

  def main do
    #Anonymous function
    add = fn(a,b) -> a + b end
    IO.puts(add.(1,2))
    is_function(add)
    IO.puts factorial(5)
  end

  #Fun with factorials!

  def factorial(number) do
    if number <= 1 do
      1
    else
      result = number * factorial(number - 1)
      result
    end
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

  #Calls big sum to split head and tails and continues to add to sum until bigSum is empty and :do 0
  def recursiveSum do
    randomList = [1,2,3,4,5,6,7,8,10,30,40,132901489,12498124,124124]
    bigSum(randomList)
  end

  def bigSum([head | tail]) do
    sum = head + bigSum(tail)
  end

  def bigSum([]), do: 0

  #Recusive Loop call
  def loop([head | tail]) do
    IO.puts(head)
    loop(tail)
  end

  def loop([]), do: nil

end
