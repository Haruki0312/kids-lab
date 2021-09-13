class Comment < ApplicationRecord

  validates :text, presence: true
  validates :user, presence: true
  validetas :work, presence: true

  belongs_to :user
  belongs_to :work
end