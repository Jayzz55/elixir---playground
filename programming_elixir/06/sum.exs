defmodule Sum do
  def add(0), do: 0
  def add(n), do: n + add(n-1)
end
