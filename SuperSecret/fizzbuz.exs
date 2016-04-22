defmodule FizzBuzz do
    def solve(nums) do
        Enum.map(nums, fn(num) ->
           cond do
              rem(num,3) === 0 and rem(num,5) === 0 ->
                "FizzBuzz"
              rem(num,3) === 0
                "Fizz"
              rem(num,5) === 0
                "Buzz"
              :else ->
                 num
           end
        end)
    end
    
    def solve2(nums) do
        Enum.map(nums, fn(num) ->
           isFizz = rem(num,3) === 0
           isBuzz = rem(num,5) === 0
           isFizzBuzz = (isFizz and isBuzz)
           if isFizzBuzz do
              "FizzBuzz"
           else 
              if isFizz do
                 "Fizz"
              else 
                 if isBuzz do
                   "Buzz"
                 else
                    num
                 end
              end
           end
        end)
    end
end