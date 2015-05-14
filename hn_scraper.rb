require_relative 'active_scrape'
require 'colorize'

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
Active_Scrape.post.comments.each {|comment| puts comment.comment_contents}
