FactoryBot.define do
  factory :payment do
    payment_name { 'Example Category' }
    amount { 1 }
    association :user, factory: :user
    group { association :group }
  end
end
