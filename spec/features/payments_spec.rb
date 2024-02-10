require 'rails_helper'

RSpec.describe 'Payment', type: :feature do
  include Devise::Test::IntegrationHelpers
  before do
    @user1 = FactoryBot.create(:user)
    @user1.skip_confirmation!
    @user1.save!
    @group = FactoryBot.create(:group, user: @user1)
    @payment = FactoryBot.create(:payment, user: @user1, group_id: @group.id)

    login_as(@user1, scope: :user)
  end

  describe 'returns user index page' do
    it 'returns the current data of groups' do
      visit authenticated_root_path
      expect(@group.group_name).to eq('Example Category')
      expect(@group.icon).to eq('mm')
    end

    it 'returns the content of group page' do
      visit authenticated_root_path
      expect(@payment.amount).to eq(1)
    end
  end

  describe 'Direct to entity payment page' do
    it 'returns action for Add' do
      visit new_group_payment_path(@group)
      sleep 10
      expect(current_path).to eq(new_group_payment_path(@group))
    end
  end
end
