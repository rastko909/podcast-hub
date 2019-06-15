class RemoveGenreFromPodcasts < ActiveRecord::Migration[5.2]
  def change
    remove_column :podcasts, :genre, :string
  end
end
