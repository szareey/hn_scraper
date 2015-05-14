require_relative 'accessor'

class Post
 
  include Accessor
 
  attr_accessor :title, :url, :points, :id, :contents, :comments, :author

  def initialize(doc)
    @title = get_title(doc)
    @points = get_points(doc)
    @id = get_item_id(doc)
    @url = get_url(doc)
    @comments = get_comments(doc)
    @contents = @comments.first
    @author = extract_usernames(doc).first
  end

end