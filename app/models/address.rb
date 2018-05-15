class Address < ApplicationRecord
  belongs_to :Movie
  has_one :Movie
end
