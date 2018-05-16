class Actor < ApplicationRecord
  has_many :Movie, through: :ActorMovie

end
