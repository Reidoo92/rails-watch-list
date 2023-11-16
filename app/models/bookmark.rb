class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, :list_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
end
