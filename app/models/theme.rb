class Theme < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '実験' },
    { id: 3, name: '工作' },
    { id: 4, name: '観察' },
    { id: 5, name: '調べ学習' },
    { id: 6, name: '天候' },
    { id: 7, name: '料理/食べ物' }
  ]

  include ActiveHash::Associations
  has_many :works
end