class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def new
    @rss = Podcast.new
    urls = [params[:rss]]
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
    redirect_to '/'
  end

  def show
    @podcast = Podcast.find(params[:id])
    @podcast_rss_url = @podcast.url 
    @episodes = []
    open(@podcast_rss_url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        params = {
          title: item.title,
          mp3_file: item.enclosure.url,
          description: item.description,
        }
        @episodes.push(params)
      end
    end
  end

end