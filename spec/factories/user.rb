FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'jodn@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
