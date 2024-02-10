class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :validatable
  has_many :entities
=======
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :payments
>>>>>>> 8b9177ecf4f153e9d4811769cacbcbb4b66e2b2f
  has_many :groups

  validates :name, presence: true
end
