class Movie < ApplicationRecord
    has_and_belongs_to_many :characters
    belongs_to :category

    validates :rating, numericality: { in: 1..5 }
end
