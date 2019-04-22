class AddAratingToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :rating, :integer
  end
end
