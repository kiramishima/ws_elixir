defmodule FizzBuzz do
    def solve(nums) do
        Enum.map(nums, fn(num) ->
           isFizz = rem(num,3) == 0
           isBuzz = rem(num,5) == 0
           isFizzBuzz = (isFizz and isBuzz)
           if isFizzBuzz do
              IO.puts("FizzBuzz")
           else 
              if isFizz do
                 IO.puts("Fizz")
              else 
                 if isBuzz do
                   IO.puts "Buzz"
                 else
                   IO.puts num
                 end
              end
           end
        end)
    end
end