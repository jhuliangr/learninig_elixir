defmodule LambdasAndFunctions do
  def main do
    IO.puts("----------------------------lambdas--------------------------")

    get_sum = fn x, y -> x + y end
    get_sum2 = &(&1 + &2)

    IO.puts("Sum 1: #{get_sum.(4, 5)} Sum 2: #{get_sum2.(4, 5)}")

    # pattern matching function
    print = fn
      {x} -> IO.puts("Called with one variable in the tuple: #{x}")
      {x, y} -> IO.puts("Called with two variables variable in the tuple: #{x} and #{y}")
    end

    print.({12})
    print.({31, 15})

    # function with default values
    sum_it(10, 10)
    sum_it()
  end

  # function with default values
  def sum_it(x \\ 5, y \\ 10) do
    IO.puts(x + y)
  end
end
