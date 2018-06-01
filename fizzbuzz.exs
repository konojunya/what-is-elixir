#! /usr/bin/env elixir

defmodule FizzBuzz do
  def run(limit) do
    print(1, limit)
  end

  defp print(n, limit) when n == limit do
    cond do
      rem(n, 15) == 0 -> IO.puts "#{n}: FizzBuzz"
      rem(n, 5) == 0 -> IO.puts "#{n}: Fizz"
      rem(n, 3) == 0 -> IO.puts "#{n}: Buzz"
      true          -> nil
    end
  end

  defp print(n, limit) do
    print(n, n)
    print(n + 1, limit)
  end
end

input = 10

FizzBuzz.run(input);