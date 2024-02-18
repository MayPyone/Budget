require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should display user name' do
    user = User.create(name: 'may', email: 'sein@gmail.com', password: '123456')
    expect(user.name).to eq('may')
  end

  it 'should display user email' do
    user = User.create(name: 'suu', email: 'aye@gmail.com', password: '123456')
    expect(user.email).to eq('aye@gmail.com')
  end

  it 'is not valid without email' do
    user = User.new(name: 'may', password: '123456')
    expect(user).to_not be_valid
  end

  it 'is not valid using password less than 6 characters' do
    user = User.new(name: 'may', email: 'sein@gmail.com', password: '1234')
    expect(user).to_not be_valid
  end
end
