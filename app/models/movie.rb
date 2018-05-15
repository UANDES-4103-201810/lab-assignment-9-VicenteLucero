class Movie < ApplicationRecord
  belongs_to :Category
  has_many :Category
  has_many :Actor, :through => :ActorMovie
  belongs_to :Director
  has_one :Director
  has_one :Address

end
