defmodule User do
  defstruct name: "John", age: 29
end

defmodule Test do
  require User

  def main do
    john = %User{}
    IO.puts "Another"
    IO.inspect john

    jane = %User{name: "Jane"}
    jane = %{jane | age: 31}
    IO.inspect jane

    # IO.puts "Occupation"
    # jane = %{jane | occupation: "Lawyer"}

    # IO.inspect jane
  end
end

Test.main