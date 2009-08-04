atom_feed do |feed|
    feed.title "Supersofar"
    feed.description "Salt Lakes Top Pop Rock Band"
    feed.updated(@shows.first.created_at)
    
    @shows.each do |show|
      feed.entry(show) do |entry|
        entry.title show.title
        entry.description show.description
        entry.venue show.venue
        entry.address show.address
        entry.date show.date
        entry.other_bands show.other_bands
        entry.ticket_price show.ticket_price
        entry.content(
          show.description, :type => 'html')
    end
  end
end