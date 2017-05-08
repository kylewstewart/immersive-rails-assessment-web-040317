class Guest < ApplicationRecord
  has_many :episodes, through: :episode_guests

end
