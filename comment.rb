require 'nokogiri'

class Comment

  attr_accessor :author, :comment_contents, :belongs_to

  def initialize(author, contents, id)
    @author = author
    @comment_contents = contents
    @belongs_to = id
  end

end