module Jekyll
    class BooksList < Liquid::Tag

        Books = Airrecord.table(ENV["AIR_API"], "appU98Mx8VW6tIIpE" , "Books")
        
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            booktext = ""
            Books.all.each do |book|
                booktext << "<div class='tldr'><div class='tldrTitle'>" + book[:name] + "</div>" + book[:author] + "</div>"
            end
            booktext
        end
    end
end

Liquid::Template.register_tag('books', Jekyll::BooksList)