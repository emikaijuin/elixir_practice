defmodule Groceries do
  def add(_, _, 0), do: "You must add at least 1 item."
  def add(groceries, item, n) when n < 0, do: remove(groceries, item, n * -1)
  def add(groceries, item, n) do
    n = cond do
      groceries[item] -> n + groceries[item]
      true -> n
    end

    {:ok, Map.put(groceries, item, n)}
  end

  def remove(_, _, 0), do: "You must remove at least 1 item."
  def remove(_, _, n) when n < 0, do: "Please enter a positive integer."
  def remove(groceries, item, n) do
    cond do
      groceries[item] ->
        n = groceries[item] - n
        {:ok, Map.put(groceries, item, n)}
      true ->
        {:error, "That item isn't in your cart."}
      end
  end

end

groceries = %{:apples => 4, :grapes => 3}

IO.puts Groceries.add(groceries, :bananas, 0)

IO.puts Groceries.add(groceries, :apples, -1)

{:ok, groceries} = Groceries.add(groceries, :bananas, 5)
IO.puts groceries.bananas

IO.puts Groceries.add(groceries, :bananas, 2)
IO.puts groceries.bananas
