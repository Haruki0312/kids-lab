class Work < ApplicationRecord
  validates :title, presence: true
  validates :material, presence: true
  validates :explanation, presence: true
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :theme_id
    validates :days_id
    validates :grade_id
  end

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :theme
  belongs_to :day
  belongs_to :grade
end
