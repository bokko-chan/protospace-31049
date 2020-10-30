class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, presence: true, length: { minimum: 6 }
  validates :name, :profile, :occupation, :position, presence: true
  has_many :prototype
  has_many :comments, dependent: :destroy
end
