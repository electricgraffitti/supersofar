xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do 
  xml.channel do
    xml.title "Stop HealthCare Fraud"
    xml.description "Find out about HealthCare Fraud"
    xml.link articles_url(:rss)
    
    for article in @articles
      xml.item do
        xml.title article.title
        xml.description article.content
        xml.link article_url(article.id)
      end
    end
  end
end