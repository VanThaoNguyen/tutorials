class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text        :content
      t.references  :user, index: true
      t.references  :chatroom, index: true
    end
  end
end
