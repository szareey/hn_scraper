require_relative 'comment'

module Accessor
  
  def extract_usernames(doc)
    doc.search('.comhead > a:first-child').map do |element|
      element.inner_text
    end
  end

  def x(doc)
    doc.search('.comment > font:first-child').map { |font| font.inner_text}
  end

  def get_points(doc)
    doc.search('.subtext > span:first-child')[0].inner_text
  end

  def get_item_id(doc)
    doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
  end

  def get_title_link(doc)
    doc.search('.title > a').map { |link| link['href']}
  end

  def get_title(doc)
    doc.search('.title > a').map { |link| link.inner_text}
  end

  def get_url(doc)
    id = get_item_id(doc)
    'https://news.ycombinator.com' + '/'+'id'
  end

   def get_comments(doc)
      comments = []
      extract_usernames(doc).each_with_index do |name, index|
        comments[index] = Comment.new(name, x(doc)[index])
      end
      comments
    end

end