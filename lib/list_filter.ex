defmodule ListFilter do
  def call(list), do: call_list(list)

  defp call_list(list) do
    Enum.filter(list, fn item -> rem(compare_is_number(item), 2) !== 0 end)
  end

  defp compare_is_number(item) do
    case Integer.parse(item) do
      {int, _rest} -> int
      :error -> 0
    end
  end
end
