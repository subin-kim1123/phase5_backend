class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :url
      t.integer :time
      # t.string :description
      # t.string :image
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
