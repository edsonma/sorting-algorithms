defmodule Utility do

  defguard is_positive_natural(value) when is_integer(value) and value > 0

  def generate_tests(test_cases, min, max)
      when is_positive_natural(test_cases)
      when is_positive_natural(min)
      when is_positive_natural(max) and max > min do

    :rand.seed(:exs1024, {186, 186, 202}) #babaca

    range = min..max
    for _case <- 1..test_cases do
      quantity_of_elements = Enum.random(range) + min
      list = for _element <- 1..quantity_of_elements, do: :rand.uniform(10000)

      IO.puts quantity_of_elements
      IO.puts Enum.join(list, " ")
      :ok
    end
  end

  def generate_tests(_test_cases, _min, _max) do
    IO.puts "Invalid parameters."
  end

  def generate_solution do
    elements = IO.gets("") |> String.trim_trailing |> String.to_integer
    if elements != 0 do
      IO.gets("")
      |> String.trim_trailing
      |> String.split
      |> convert_to_integer_list
      |> Enum.sort
      |> Enum.join(" ")
      |> IO.puts
      Utility.generate_solution
    end
  end

  defp convert_to_integer_list(string_list) do
    for item <- string_list do
      String.to_integer(item)
    end
  end
end

# Utility.generate_tests(1000, 10, 100)
# Utility.generate_solution
