class Blog < ApplicationRecord
    belongs_to :user
    has_many :ratings, dependent: :destroy
    has_many :rated_users, through: :ratings, source: :user
    has_many :comments, as: :commentable

    def average_rating
        ratings.average(:value)&.round(1)
    end
end
