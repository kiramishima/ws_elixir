defmodule Bottles do
    def sing(nums) do
        Enum.map(nums, fn(num) ->
            cond do
               num > 1 ->
                  IO.puts "#{num} bottles of beer on the wall, #{num} bottles of beer."
                  x = num - 1
                  if x == 1 do
                    IO.puts "Take one down and pass it around, #{x} bottle of beer on the wall."
                  else 
                    IO.puts "Take one down and pass it around, #{x} bottles of beer on the wall."
                  end
               num == 1 ->
                  IO.puts "1 bottle of beer on the wall, 1 bottle of beer."
                  IO.puts "Take one down and pass it around, no more bottles of beer on the wall."
               num == 0 ->
                  IO.puts "No more bottles of beer on the wall, no more bottles of beer."
                  IO.puts "Go to the store and buy some more, 99 bottles of beer on the wall."
            end
        end)
    end
    
    def canta_each(nums) do
        Enum.each(nums, fn(x) ->
            if x > 1 do
                IO.puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
                y = x - 1
                if y == 1 do
                    IO.puts "Take one down and pass it around, #{y} bottle of beer on the wall."
                else 
                    IO.puts "Take one down and pass it around, #{y} bottles of beer on the wall."
                end
            else
                if x == 1 do
                    IO.puts "1 bottle of beer on the wall, 1 bottle of beer."
                    IO.puts "Take one down and pass it around, no more bottles of beer on the wall."
                else
                    if x == 0 do
                        IO.puts "No more bottles of beer on the wall, no more bottles of beer."
                        IO.puts "Go to the store and buy some more, 99 bottles of beer on the wall."
                    end
                end
            end
        end)
    end
    
    def canta_case(nums) do
        Enum.each(nums, fn(x) ->
            hay_cerveza = if x > 1, do: "x > 1", else: if x == 1, do: "x == 1", else: if x == 0, do: "x == 0"
            # IO.puts hay_cerveza
            case hay_cerveza do
                "x > 1" ->
                    IO.puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
                    y = x - 1
                    if y == 1 do
                        IO.puts "Take one down and pass it around, #{y} bottle of beer on the wall."
                    else 
                        IO.puts "Take one down and pass it around, #{y} bottles of beer on the wall."
                    end
                "x == 1" ->
                    IO.puts "1 bottle of beer on the wall, 1 bottle of beer."
                    IO.puts "Take one down and pass it around, no more bottles of beer on the wall."
                "x == 0" ->
                    IO.puts "No more bottles of beer on the wall, no more bottles of beer."
                    IO.puts "Go to the store and buy some more, 99 bottles of beer on the wall."
            end
        end)
    end
end

# Bottles.sing(99..0)
# Bottles.canta_each(99..0)
Bottles.canta_case(99..0)