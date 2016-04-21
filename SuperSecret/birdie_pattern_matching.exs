defmodule Birdie do
    def sing("piiii") do
       "piiii"
    end
    
    def sing("guuuu") do
       String.reverse("guuuu")
    end
    
    def sing("fiufiu") do
       "fiufiu"
       |> String.reverse
       |> String.upcase
    end
end