class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '小学1年生' },
    { id: 3, name: '小学2年生' },
    { id: 4, name: '小学3年生' },
    { id: 5, name: '小学4年生' },
    { id: 6, name: '小学5年生' },
    { id: 7, name: '小学6年生' }
  ]

  include ActiveHash::Associations
  has_many :works
end