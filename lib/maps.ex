defmodule Maps do
  def main do
    IO.puts("----------------------------maps--------------------------")

    map = %{
      "key" => "value",
      "key2" => "value2"
    }

    IO.puts(map["key"])

    map2 = %{
      key: "value like json",
      key2: "value2 like json"
    }

    map3 = Map.put_new(map2, :key3, "Added value")
    # IO.puts map3.key3
    for {k, v} <- map3 do
      IO.puts("#{k} -> #{v}")
    end
  end
end
