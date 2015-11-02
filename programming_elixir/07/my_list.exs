defmodule MyList do
  def sum([ head | [] ]), do: head
  def sum([ head | tail ]), do: head + sum(tail)

  def mapsum(list, func), do: _mapsum(list, 0, func)
  defp _mapsum([], value, _), do: value
  defp _mapsum([ head | tail], value, func), do: _mapsum(tail, value + func.(head), func)

  #def max(list), do: _max(list, 0, &_pick_max/2)
  #defp _max([], value, _), do: value
  #defp _max([head | tail], value, func), do: _max(tail, func.(head, value), func)
  #defp _pick_max(a, b) when a > b, do: a
  #defp _pick_max(_a, b), do: b

  def max([head | tail]), do: _max(tail, head)
  defp _max([], value), do: value
  defp _max([head|tail], current) when head > current, do: _max(tail, head)
  defp _max([_head|tail], current), do: _max(tail, current)

  def caesar([],_n), do: []
  def caesar([head|tail], n) when (head + n) > ?z, do: [(head + n - 26) | caesar(tail, n)]
  def caesar([head|tail], n), do: [(head + n ) | caesar(tail, n)]

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from| span(from + 1, to)]
end
