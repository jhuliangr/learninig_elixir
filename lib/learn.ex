defmodule Learn do
  def main do
    # string variables
    str = "..to print.."
    longer_str = str <> " now " <> "is longer "

    # function calling
    Strings.main(str, longer_str)
    mod()
    Conditionals.main(str, longer_str)
    TuplesAndLists.main()
    Maps.main()
    LambdasAndFunctions.main()
    ExceptionHandling.main()
    ThreadsAndConcurrency.main()

    # IO test
    IO.puts("----------------------------IO test--------------------------")
    name = IO.gets("Put your name\n") |> String.trim()
    "Hello #{name}" |> IO.puts()
  end

  # simple test of modularization
  def mod do
    Mo.imprimir()
  end
end
