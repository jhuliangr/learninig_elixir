defmodule TuplesAndLists do
  def main do
    IO.puts("----------------------------tuples and lists--------------------------")
    # tuple
    myTuple = {123, "Hello", :Atom}
    myTuple = Tuple.append(myTuple, [1, 2, 3])
    myTuple = Tuple.delete_at(myTuple, 3)

    # pattern matching on tumples
    {number, string, atom} = myTuple
    IO.puts("#{number}, #{string}, #{atom}")

    # list
    list = [1, 2, 3]
    list = list ++ [4, 5, 6]
    list = list -- [3, 4]
    IO.puts("5 belongs to this list?: #{5 in list}")

    # destructuring lists
    [head | tail] = list
    IO.puts("#{inspect(tail)}, and the head is: #{head}")

    # iterators
    Enum.each(list, fn i ->
      IO.puts(i)
    end)

    # recursive iterator
    show_list([9, 8, 7, 6])
  end

  # recursive iterator
  def show_list([head | tail]) do
    IO.puts("recursive: #{head}")
    show_list(tail)
    # if tail === [] do
    #     nil
    # else
    #     show_list(tail)
    # end
  end

  def show_list([]), do: nil
end
