defmodule MapsTuplesDictionariesTest do
    use ExUnit.Case
    doctest MapsTuplesDictionaries
  
    test "Maps" do
      assert MapsTuplesDictionaries.bonjour_maps().message == "Je suis un map ou dictionaire"
    end

    test "Tuples" do
      assert MapsTuplesDictionaries.bonjour_lists() == [1, 3.0, true, 5]
    end
    
end