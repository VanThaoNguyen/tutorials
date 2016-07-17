class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.boolean :published,     default: true
      t.integer :ordering,      default: 10
      t.timestamps
    end
  end
end
