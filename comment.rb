require 'nokogiri'

class Comment

  attr_accessor :author, :comment_contents

  def initialize(author, contents)
    @author = author
    @comment_contents = contents
  end

end