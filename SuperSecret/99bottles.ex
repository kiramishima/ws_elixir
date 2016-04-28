defmodule Bottles do
    def sing(nums) do
        Enum.map(nums, fn(num) ->
            cond do
               num > 1
                  IO.puts "#{num} bottles of beer on the wall, #{num} bottles of beer."
                  x = num - 1
                  if x == 1 do
                    IO.puts "Take one down and pass it around, #{x} bottle of beer on the wall."
                  else 
                    IO.puts "Take one down and pass it around, #{x} bottles of beer on the wall."
                  end
               num == 1
                  IO.puts "1 bottle of beer on the wall, 1 bottle of beer."
                  IO.puts "Take one down and pass it around, no more bottles of beer on the wall."
               num == 0
                  IO.puts "No more bottles of beer on the wall, no more bottles of beer."
                  IO.puts "Go to the store and buy some more, 99 bottles of beer on the wall."
            end
        end)
    end
end

Bottles.sing(99..0)