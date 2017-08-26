module Jekyll
    class BooksList < Liquid::Tag

        Books = Airrecord.table(ENV["AIR_API"], "appU98Mx8VW6tIIpE" , "Books")
        
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            booktext = ""
            bookList = Books.all(sort: { "Date Finished": "asc"}).find_all {|book| book[:read] == true}
            bookList.each do |book|
                booktext << "<div class='book'><div class='bookTitle'>" + book[:name] + "</div>" + book[:author] + "<img src='" + book[:cover][0]["url"] + "'/></div>"
            end
            booktext
        end
    end
end

Liquid::Template.register_tag('books', Jekyll::BooksList)