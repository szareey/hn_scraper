class Title

  attr_accessor :title
  
  @@hello = "hello"

  def initialize(title)
    @title = title
  end

  

  def say_hello
    puts @@hello
  end

  def change_it_it
    @@hello = "bye bye"
  end

  
  class << self
    
    def change_title(new_title)
      @title = new_title
    end

    def whatamI
      @@hello
    end

    def change_it()
      @@hello = "bye"
    end

  end

 
end



# title1= Title.new("title1")
# title2 = Title.new("title2")

# # puts title1.title
# # puts title2.title

# # puts Title.change_title("title3")
# # puts title1.title
# # puts title2.title

# title1.say_hello
# title2.say_hello
# title1.change_it_it
# title1.say_hello
# title2.say_hello