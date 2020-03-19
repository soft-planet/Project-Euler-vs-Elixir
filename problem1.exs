defmodule Recursion do
  def calc_multiple_times(acc, n) when n <= 1 do
    acc+multiplesOf(n)
  end

  def calc_multiple_times(acc, n) do
    calc_multiple_times(acc+multiplesOf(n),n - 1)
  end

  def multiplesOf(number) do
    if rem(number, 3) == 0 || rem(number , 5) == 0
     do
           number
      else
      0
        end
  end
end

IO.puts Recursion.calc_multiple_times(0, 999)