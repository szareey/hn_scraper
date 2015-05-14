require_relative 'accessor'
require_relative 'post'
require 'nokogiri'
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

#test code for post
post_properties = ['title', 'url', 'points', 'id', 'author']
post_properties.each {|property| puts Active_Scrape.post.send(property)}

#test code for comments
puts "**** Main Post Comment: #{Active_Scrape.post.contents.comment_contents} *****"
puts "**** Authors of all comments *****"
Active_Scrape.post.comments.each {|comment| puts comment.author}
puts "**** Contents of each comment: ******"
Active_Scrape.post.comments.each {|comment| puts "#{comment.comment_contents}\n"}
