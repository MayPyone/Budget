require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'associations' do
    it 'belongs to a user' do
      association = Payment.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'has many entities' do
      association = Payment.reflect_on_association(:groups)
      expect(association.macro).to eq(:has_and_belongs_to_many)
    end
  end
end
