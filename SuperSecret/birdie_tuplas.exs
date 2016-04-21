defmodule Birdie do
    def sing({_, song}) do
       case song do
         "piiii" ->
            song
         "guuuu" ->
            String.reverse(song)
         "fiufiu" ->
            song
            |> String.reverse
            |> String.upcase
       end
    end
end