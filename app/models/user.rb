class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
  validates_format_of :password, with: PASSWORD_REGEX, on: :create

  validates :username, presence: true

  has_many :works
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :like_works, through: :likes, source: :work
end
