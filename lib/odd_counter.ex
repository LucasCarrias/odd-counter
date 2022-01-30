require Integer

defmodule OddCounter do
  def call(list), do: count_odd(list, 0)

  defp is_number?(value), do: String.match?(value, ~r/^[[:digit:]]+$/)
  defp is_odd_number?(value), do: is_number?(value) && Integer.is_odd(String.to_integer(value))

  defp count_odd([], acc), do: acc

  defp count_odd([head | tail], acc) do
    if is_odd_number?(head) do
      count_odd(tail, acc + 1)
    else
      count_odd(tail, acc)
    end
  end
end
