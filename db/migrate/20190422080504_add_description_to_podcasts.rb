class AddDescriptionToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :description, :string
  end
end
