
puts "Start of Seeding..."

urls = ['https://rss.acast.com/aunty-donna-podcast', 'http://tigerbelly.libsyn.com/rss', 'http://yourmomshousepodcast.libsyn.com/rss']

urls.each do |url|
  open(url) do |rss|
  feed = RSS::Parser.parse(rss)
    puts "Title: #{feed.channel.title}"
    params = {
      name: feed.channel.title,
      description: feed.channel.description,
      channel_image: feed.channel.image.url,
      url: url
    }
    puts "Creating Podcast: #{params[:title]}"
    podcast = Podcast.new(params)
    podcast.save
  end
end

puts "End of Seeding!"
