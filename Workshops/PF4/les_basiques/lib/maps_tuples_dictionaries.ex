defmodule MapsTuplesDictionaries do

    def bonjour_maps() do
        %{:message => "Je suis un map ou dictionaire"}
    end

    def bonjour_lists do
        a = [1, "2", 3.0, true]
        # Add
        a = a ++ [5]
        # Remove
        a -- ["2"]
    end
end