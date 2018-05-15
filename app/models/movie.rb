class Movie < ApplicationRecord
  belongs_to :director_id
  belongs_to :adress_id
end
