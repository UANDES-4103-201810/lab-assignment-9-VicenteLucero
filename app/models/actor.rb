class Actor < ApplicationRecord
  belongs_to :Movie, :through => :ActorMovie
  has_many :Movie, :through => :ActorMovie

end
