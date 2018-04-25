defmodule ChaimSort do

  def main do
    elements = IO.gets("") |> String.trim_trailing |> String.to_integer
    if elements != 0 do
      IO.gets("")
      |> String.trim_trailing
      |> String.split
      |> convert_to_integer_list
      |> ChaimSort.sort
      |> Enum.join(" ")
      |> IO.puts
      ChaimSort.main
    end
  end

  def sort(list) do
    unless sorted? list do
      Enum.random(2..length(list))
      |> sort_by_student(list)
      |> List.flatten
      |> sort
    else
      list
    end
  end

  defp sort_by_student(schoolchildren, list) do
    fraction = div(length(list), schoolchildren) + 1
    for student <- 1..schoolchildren do
      Enum.slice(list, (student-1)*fraction, fraction)
      |> Enum.sort
    end
  end

  defp sorted?(list) do
    Enum.sort(list) == list
  end

  defp convert_to_integer_list(string_list) do
    for item <- string_list do
      String.to_integer(item)
    end
  end
end

ChaimSort.main
