class Group < ApplicationRecord
  has_many :entities, dependent: :destroy
  has_many :users
end
validates :group_name, presence: true
validates :icon, presence: true
