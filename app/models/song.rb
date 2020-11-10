class Song < ApplicationRecord
    belongs_to :playlist, optional: true
end

# optional: true ----> playlist_id: nil