class Work < ApplicationRecord


  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :theme
  belongs_to :day
  belongs_to :grade
end
