class SuperController < ApplicationController
  def index
    
    @article = Article.last_created.small_list(1)
    
  end

end
