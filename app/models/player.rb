class Player < ApplicationRecord
  validates :name, :pitcher, :inning_pitch, :pref_pos, :avoid_pos, presence: true
end
