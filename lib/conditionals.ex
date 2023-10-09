defmodule Conditionals do
  def main(str, longer_str) do
    IO.puts("----------------------------conditionals--------------------------")
    # If
    if String.length(str) > String.length(longer_str) do
      IO.puts("This is not going to be printed")
    else
      IO.puts("If clause working correctly\n")
    end

    # Not if
    unless String.length(str) > String.length(longer_str) do
      IO.puts("This is not going to be printed")
    else
      IO.puts("If clause working correctly\n")
    end

    # Cond
    cond do
      String.length(str) > String.length(longer_str) ->
        IO.puts("condition 1")

      String.length(str) < String.length(longer_str) ->
        IO.puts("condition 2")

      String.length(str) <= String.length(longer_str) ->
        IO.puts("condition 3")

      true ->
        IO.puts("Default")
    end

    # Case
    variable = 1

    case variable do
      1 -> IO.puts("Yep")
      2 -> IO.puts("Nope")
      _ -> IO.puts("None of those")
    end

    # ternary
    IO.puts("Ternary: #{if variable === 1, do: "Working", else: "Not working"}")
  end
end
