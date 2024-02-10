class Group < ApplicationRecord
  has_many :payments, dependent: :destroy
  belongs_to :user
  validates :group_name, presence: true
  validates :icon, presence: true
  ICONS = {
    'fa-solid fa-plane' => 'Transportation',
    'fa-cart-shopping' => 'Shopping Cart',
    'fa-graduation-cap' => 'Education or Learning',
    'fa-music' => 'Music or Audio',
    'fa-calendar' => 'Calendar or Events',
    'fa-wrench' => 'Tools or Settings',
    'fa-microphone' => 'Podcast or Audio',
    'fa-camera' => 'Photography or Images',
    'fa-solid fa-utensils' => 'Food',
    'fa-solid fa-gift' => 'Gift'
  }.freeze

  def total_amount
    payments.sum(:amount)
  end
end
