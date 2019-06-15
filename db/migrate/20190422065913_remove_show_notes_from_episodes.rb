class RemoveShowNotesFromEpisodes < ActiveRecord::Migration[5.2]
  def change
    remove_column :episodes, :show_notes, :string
  end
end
