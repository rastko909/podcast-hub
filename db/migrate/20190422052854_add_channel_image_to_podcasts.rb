class AddChannelImageToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :channel_image, :string
  end
end
