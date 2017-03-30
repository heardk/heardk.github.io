require 'flickraw'

FlickRaw.api_key        = "7cdb288aac85d749395d9fa9c69465e0"
FlickRaw.shared_secret  = "85155c1fc7e2e356"

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
