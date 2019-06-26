defmodule Anagram do
  def anagram?(a, b) do
    stm(a) == stm(b)
  end

  def stm(str) do
    str
    |> String.split("")
    |> Enum.map(fn char -> String.downcase(char) end)
    |> frequency_map
  end

  def frequency_map(lst, acc \\ %{})
  def frequency_map([], acc), do: acc

  def frequency_map([char | remaining], acc) do
    acc =
      if Map.has_key?(acc, char) do
        Map.put(acc, char, acc[char] + 1)
      else
        Map.put(acc, char, 1)
      end

    frequency_map(remaining, acc)
  end
end

IO.puts(Anagram.anagram?("Buckethead", "DeathCubeK"))
