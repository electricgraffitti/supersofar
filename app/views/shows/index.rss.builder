xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do 
  xml.channel do
    xml.title "Supersofar Shows"
    xml.description "When and Where"
    xml.link shows_url(:rss)
    
    for show in @shows
      xml.item do
        xml.title show.title
        xml.description show.description
        xml.venue show.venue
        xml.address show.address
        xml.other_bands show.other_bands
        xml.ticket_price show.ticket_price
        xml.link show_url(show.id)
      end
    end
  end
end