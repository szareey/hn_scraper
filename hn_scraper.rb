require_relative 'post'
require 'nokogiri'
require_relative 'accessor'
require 'open-uri'
require 'colorize'
include Accessor

class Active_Scrape

  class << self

    def run
      @@doc = parse_site
      @@post = Post.new(@@doc)
    end

    def parse_site
      Nokogiri::HTML(File.open('post.html'))
    end
    
    def post
      @@post
    end

  end

end

#aweseomeness
Active_Scrape.run
puts Active_Scrape.post.title
puts Active_Scrape.post.comments[5].comment_contents