class SuperController < ApplicationController
  
  def index
    @article = Article.last_created.small_list(1)
    @shows = Show.small_list(2).upcoming
    @fan_session = FanSession.new
  end

end
