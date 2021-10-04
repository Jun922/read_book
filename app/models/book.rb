class Book < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :genre, presence: true
end
