class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text   :content
      t.boolean :published, default: true
      t.integer :ordering,  default: 10
      t.references :category, index: true
      t.timestamps
    end
  end
end
