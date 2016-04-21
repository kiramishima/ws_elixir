defmodule Birdie do
    def song(songs) do
        Enum.map(songs, fn(song) ->
            IO.puts(song)
        end)
    end
end