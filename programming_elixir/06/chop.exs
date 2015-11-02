require IEx

defmodule Chop do
  def guess(actual, a..b) do
    make_guess(div(b, 2), actual, a..b)
  end

  def make_guess(actual, actual, _), do: IO.inspect actual
  def make_guess(chosen, actual, a..b) when chosen > actual do
    IO.puts "Is it #{chosen}"
    next_guess = div((chosen + a), 2)
    make_guess(next_guess, actual, a..div(a + b, 2))
  end
  def make_guess(chosen, actual, a..b) when chosen < actual do
    IO.puts "Is it #{chosen}"
    next_guess = div((chosen + b) + 1, 2)
    make_guess(next_guess, actual, div(a + b, 2)..b)
  end
end
