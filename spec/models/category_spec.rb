require 'rails_helper'

describe Category, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :title }
  end

  context 'associations' do
    it { is_expected.to have_many :articles }
  end
end