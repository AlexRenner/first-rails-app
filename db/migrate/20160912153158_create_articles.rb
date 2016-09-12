class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :email
      t.integer :price
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
