class RemoveExplicitContentFromPodcasts < ActiveRecord::Migration[5.2]
  def change
    remove_column :podcasts, :explicit_content, :string
  end
end
