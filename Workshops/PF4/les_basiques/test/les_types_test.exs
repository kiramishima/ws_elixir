defmodule LesTypesTest do
    use ExUnit.Case
    doctest LesTypes
  
    test "Numeros" do
      assert LesTypes.bonjour_numeros() == 1.0
    end
    
end