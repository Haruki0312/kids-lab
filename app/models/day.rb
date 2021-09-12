class Day < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1日' },
    { id: 3, name: '2~3日' },
    { id: 4, name: '4~5日' },
    { id: 5, name: '1週間' },
    { id: 6, name: '1週間~10日以内' }
  ]

  include ActiveHash::Associations
  has_many :works
end