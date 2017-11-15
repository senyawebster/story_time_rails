class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.string :sentence
      t.string :author
      t.string :pic
      t.integer :story_id

      t.timestamps
    end
  end
end
