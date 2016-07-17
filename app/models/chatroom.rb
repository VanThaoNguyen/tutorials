class Chatroom < ActiveRecord::Base
  validates :name, presence: true
  validates :slug, presence: true

  has_many :messages

  before_create :set_slug

  def to_param  
    slug
  end

  private

  def set_slug
    self.slug ||= name.parameterize
  end
end