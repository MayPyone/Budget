class Payment < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups
  validates :payment_name, presence: true
  validates :amount, presence: true
end
