xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do 
  xml.channel do
    xml.title "Supersofar Blog"
    xml.description "A little outside the band"
    xml.link posts_url(:rss)
    
    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.description
        xml.link post_url(post.id)
      end
    end
  end
end