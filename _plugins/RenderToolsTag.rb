require 'haml'

module Jekyll
    class PinboardTools < Liquid::Tag
        
        PINBOARD = Pinboard::Client.new(:token => ENV["PIN_TOKEN"])
        template = File.read(File.dirname(__FILE__) + '/templates/tools-template.haml')
        Haml_Output = Haml::Engine.new(template)
        
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            tools = PINBOARD.posts(:tag => 'tools', :results => 100)
            Haml_Output.render(Object.new, :tools => tools)
        end
    end
end


Liquid::Template.register_tag('tools', Jekyll::PinboardTools)