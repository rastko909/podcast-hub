class RemoveRatingFromEpisodes < ActiveRecord::Migration[5.2]
  def change
    remove_column :episodes, :rating, :integer
  end
end
