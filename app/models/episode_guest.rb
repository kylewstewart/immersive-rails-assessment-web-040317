class EpisodeGuest < ApplicationRecord
  has_many :episodes
  has_many :guests

end
