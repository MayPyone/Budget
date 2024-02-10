FactoryBot.define do
  factory :group do
    group_name { 'Example Category' }
    icon { 'mm' }
    association :user, factory: :user
  end
end
