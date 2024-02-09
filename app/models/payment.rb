class Payment < ApplicationRecord
  belongs_to :user
  has_many :groups, dependent: :destroy
  validates :payment_name, presence: true
  validates :amount, presence: true
end
