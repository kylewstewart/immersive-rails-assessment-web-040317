class Episode < ApplicationRecord
  has_many :guests, through: :episode_guests

end
