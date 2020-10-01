defmodule LesTypes do
    
    def bonjour_strings() do
        # Une declaration très simple
        salutation = "Bonjour, je suis un string (Chaine) !!!"

        # Interpolation
        name = "Thania"
        salutation2 = "Bonjour, #{name}"

        # Concatenation
        message = salutation2 <> ", comment ça va ?"

        IO.puts salutation
        IO.puts salutation2
        IO.puts message
        message
    end

    # Dans cette fonction, on montre les types numeriques: integer et floats
    # Aussi on peut regarder, les operations basiques tel que l'addition, la substraction, la division et la multiplication
    def bonjour_numeros() do
        c = FamNumeriques.sum(1, 59.55)
        d = FamNumeriques.diff(c, 10.55)
        e = FamNumeriques.division(d, 50)
        f = FamNumeriques.multiply(e, 2)
        Float.round(e, 2)
    end

    def bonjour_hex_octal_et_binary() do
    end

    def bonjour_atoms() do
    end
end