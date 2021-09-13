class Work < ApplicationRecord
  validates :image, presence: true
  validates :title, presence: true
  validates :material, presence: true
  validates :explanation, presence: true
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :theme_id
    validates :product_day_id
    validates :grade_id
  end

  belongs_to :user
  has_one_attached :image
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :theme
  belongs_to :product_day
  belongs_to :grade
end
