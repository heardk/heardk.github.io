require 'markaby'

module Jekyll
    class PinboardTools < Liquid::Tag
        
        PINBOARD = Pinboard::Client.new(:token => ENV["PIN_TOKEN"])
        OUTPUT = Markaby::Builder.new
        
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            tools = PINBOARD.posts(:tag => 'tools', :results => 100)
            OUTPUT.div.tools do
                tools.each do |tool|
                    OUTPUT.div.toolitem do
                        a "#{tool.description}", :href =>  tool.href
                        p "#{tool.extended}"
                    end
                end 
            end
            return OUTPUT.to_s
        end
    end
end


Liquid::Template.register_tag('tools', Jekyll::PinboardTools)