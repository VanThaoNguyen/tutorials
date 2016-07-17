class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages

  def name
    if last_name.blank?
      first_name
    else
      first_name + " " + last_name
    end
  end
end
