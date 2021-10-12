class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '小説' },
    { id: 3, name: 'ビジネス書' },
  ]

  include ActiveHash::Associations
  has_many :books
end