defmodule ExceptionHandling do
  def main do
    IO.puts("----------------------------exception_handling--------------------------")

    err =
      try do
        5 / 0
      rescue
        ArithmeticError -> "Cant divide by Zero"
      end

      IO.puts(err)
  end
end
