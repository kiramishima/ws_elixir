defmodule Birdie do
    def feed(foods) do
        Enum.map(foods, fn(food) ->
           case food do
              "chocolate" ->
                 "ewwww"
              "bread" ->
                 "I like"
           end
        end)
    end
end