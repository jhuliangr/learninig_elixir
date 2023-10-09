defmodule Strings do
  def main(str, longer_str) do
    IO.puts("----------------------------strings work--------------------------")
    IO.puts("Length: #{String.length(str)}\n")

    IO.puts(longer_str <> "\n")
    IO.puts("does it contains 'now'?: #{String.contains?(longer_str, "now")}\n")
  end
end
