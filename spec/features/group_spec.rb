require 'rails_helper'

RSpec.describe 'Group', type: :feature do
  include Devise::Test::IntegrationHelpers
  before do
    @user1 = FactoryBot.create(:user)
    @user1.skip_confirmation!
    @user1.save!
    login_as(@user1, scope: :user)
  end

  describe 'returns user index page' do
    it 'returns the current data of groups' do
      visit authenticated_root_path
      group = FactoryBot.create(:group, user: @user1)
      expect(group.group_name).to eq('Example Category')
      expect(group.icon).to eq('mm')
    end

    it 'returns the content of group page' do
      visit authenticated_root_path
      expect(page).to have_content('Add Group')
      expect(page).to have_content('Groups')
    end
  end

  describe 'Direct to add group page' do
    it 'returns action for Add' do
      visit new_group_path
      sleep 10
      expect(current_path).to eq(new_group_path)
    end
  end
end
