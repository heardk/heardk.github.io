require 'flickraw'

FlickRaw.api_key        = ENV["FLICKR_API"]
FlickRaw.shared_secret  = ENV["FLICKR_SECRET"]

module Jekyll
  module FlickrFilter
    def flickr_image(id, collection)
      <<-MARKUP.strip
        <a href="#{image_url(id)}" data-fancybox="#{collection.tr(' ', '')}" data-caption="#{image_title()}">
          <img src="#{image_thumb()}" alt="" />
        </a>
      MARKUP
    end
  
    private
  
    @@photo = ""
    
    def image_url(id)
      @@photo = flickr.photos.getInfo(:photo_id => id)
      FlickRaw.url_c(@@photo)
    end
    
    def image_thumb()
      FlickRaw.url_q(@@photo)
    end
    
    def image_title()
      @@photo.title
    end
  end
end

Liquid::Template.register_filter(Jekyll::FlickrFilter)
