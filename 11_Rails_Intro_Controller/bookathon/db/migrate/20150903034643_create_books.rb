class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :image_url
      t.string :title
      t.string :author
      t.string :genre
      t.integer :year
      t.boolean :available

      t.timestamps null: false
    end
  end
end
