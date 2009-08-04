class BlogController < ApplicationController
  
  def index
    @posts = Post.last_created
  end

end
