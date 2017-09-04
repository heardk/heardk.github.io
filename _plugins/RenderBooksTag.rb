require 'haml'

module Jekyll
    class BooksList < Liquid::Tag

        Books = Airrecord.table(ENV["AIR_API"], "appU98Mx8VW6tIIpE" , "Books")
        template = File.read(File.dirname(__FILE__) + '/templates/books-template.haml')
        Haml_Output = Haml::Engine.new(template)

        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            bookList = Books.all(sort: { "Date Finished": "desc"}).find_all {|book| book[:read] == true}
            Haml_Output.render(Object.new, :bookList => bookList)
        end
    end
end

Liquid::Template.register_tag('books', Jekyll::BooksList)