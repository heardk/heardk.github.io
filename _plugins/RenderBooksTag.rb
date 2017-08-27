require 'markaby'

module Jekyll
    class BooksList < Liquid::Tag

        Books = Airrecord.table(ENV["AIR_API"], "appU98Mx8VW6tIIpE" , "Books")
        Output = Markaby::Builder.new
        
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            booktext = ""
            bookList = Books.all(sort: { "Date Finished": "desc"}).find_all {|book| book[:read] == true}
            bookList.each do |book|
                Output.div.bookWrapper do
                    Output.div.bookImg do
                        img :src => book[:cover][0]["url"]
                    end
                    Output.div.bookTitle do
                        a "#{book[:name]}", :href => book[:link]
                    end
                    Output.div do
                        "Author: #{book[:author]}"
                    end
                    Output.div do
                       "Read: #{book[:date_finished].strftime('%m-%Y')}"
                    end
                    Output.div do
                        "Pages: #{book[:page_count]}"
                     end
                end
            end
            return Output.to_s
        end
    end
end

Liquid::Template.register_tag('books', Jekyll::BooksList)