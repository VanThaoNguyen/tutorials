class Message < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :user
  belongs_to :chatroom
end