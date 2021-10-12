class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user

  validates :name, presence: true
  validates :genre_id, presence: true, numericality: {other_than: 1}
  validates :impression, presence: true
end
