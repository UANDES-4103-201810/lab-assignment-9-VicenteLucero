class Director < ApplicationRecord
  has_many :Movie
  belongs_to :Movie
end
