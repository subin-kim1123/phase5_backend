class CreateMyArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :my_articles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :article

      t.timestamps
    end
  end
end
