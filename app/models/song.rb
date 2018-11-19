class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :billboard, required: false
end
