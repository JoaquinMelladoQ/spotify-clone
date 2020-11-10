class Playlist < ApplicationRecord
    has_many :songs
    accept_nested_attributes_for :songs
end
