# La structure d'un module, il sera toujours 
# defmodule <ModuleName> do
#  -- Dans l'interieur, on peut trouver le code --
# end
#
defmodule FamStrings do
    # Ici, vous trouvez les fonctions pour votre module.
    # En Elixir, il y a une grande quantité des modules alors vous pouvez developper les propres.

    def salutation() do
        "Bonjour, Monde !!!"
    end

    def salutation_plus_param(name \\ "Zura") do
        # Il y a deux formes pour faire la concatenation ou interpolation des chaines, on va utiliser le methode plus populaire et le plus connu
        # Si l'utilisateurs n'envoit pas des params, on peut definir les params avec un valeur default en utilisant "\\", après le valeur souhaitè
        "Bonjour, #{name} !!!"
    end

    def salutation_plus_param2(name \\ "Zura") do
        # Aussi, Il existe une autre forme pour faire la concatenation des chaines
        # On peut utiliser les symboles "<>"
        # Celui-ci fontionera quand on a de diferents evaluations qui modifient la sorte.
        "Bonjour, " <> name <> " !!!"
    end
end