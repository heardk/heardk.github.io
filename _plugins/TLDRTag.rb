module Jekyll
    class TldrTag < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
    
        def render(context)
            site = context.registers[:site]
            converter = site.find_converter_instance(::Jekyll::Converters::Markdown)
            <<-MARKUP.strip
            <div class="tldr">
            <div class="tldrTitle">tldr</div>
            #{converter.convert(@text)}
            </div>
            MARKUP
        end
    end
end

Liquid::Template.register_tag('tldr', Jekyll::TldrTag)