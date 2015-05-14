require_relative 'post'
require 'nokogiri'
require_relative 'accessor'
require 'open-uri'
require 'colorize'
include Accessor

class Active_Scrape

  class << self

    def run(url)
      @@doc = parse_site(url)
      @@post = Post.new(@@doc)
    end

    def parse_site(url)
      Nokogiri::HTML(open(url))
    end
    
    def post
      @@post
    end

  end

end

#aweseomeness
Active_Scrape.run(ARGV[0])
puts Active_Scrape.post.title
# puts Active_Scrape.post.comments[5].comment_contents