# Take a list and find the square of the sum of the tail.

defmodule PipeTest do
  def square(x), do: x * x

  def sum(l, start \\ 0) do
    start + Enum.sum(l)
  end

  def sst(the_list) do
    the_list
      |> tl
      |> sum(2)
      |> square
  end
end

IO.puts PipeTest.sst([1,2,5])