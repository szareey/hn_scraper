# require_relative 'accessor'
require_relative 'post'
require 'nokogiri'
require 'open-uri'

include Accessor

class Active_Scrape

  class << self

    def run(url)
      @@post = Post.new(Nokogiri::HTML(open(url)))
    end
   
    def post
      @@post
    end

  end

end