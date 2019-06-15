class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :genre
      t.string :explicit_content
      t.string :url

      t.timestamps
    end
  end
end
