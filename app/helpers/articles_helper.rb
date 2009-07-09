module ArticlesHelper
  
  def article_image(article)
      if article_path(article)
        article.assets.each do |asset|
          image_tag(asset.attachment.url(:small), :alt => article.title)
        end
      elsif articles_path
        article.assets.each do |asset|
          link_to image_tag(asset.attachment.url(:thumb), :alt => article.title), article_path(article)
        end
      else
        article.assets.each do |asset|
          link_to image_tag(asset.attachment.url(:small), :alt => article.title), article_path(article) 
        end
    end
  end
  
  def article_description(article)
    if article_path(article)
      article.description
    else
      truncate(article.description, :length => 150)
    end
  end
  
end
