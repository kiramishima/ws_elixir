defmodule Text do
    def highlight(text, terms) do
        # Enum.reduce(terms, x.(term))
        Enum.reduce(terms, text, fn(term, text) ->
           String.replace(text, term, "<b>#{term}</b>")
        end)
    end
end

# x = fn(tems) -> IO.puts term
texto = "Un amparo por el interes legitimo"
terms = ["amparo", "interes legitimo"]

IO.puts Text.highlight(texto, terms)
# term = "amparo"
# IO.puts String.replace(texto, term, "<p>#{term}</p>")

# IO.puts Enum.reduce(terms, texto, fn(term, text) ->
#    String.replace(text, term, "<p>#{term}</p>")
# end)