class Entity < ApplicationRecord
    has_many :users;
    has_many :groups, dependent: :destroy
    validates :entity_name, presence: true
    validates :amount, presence: true
end
