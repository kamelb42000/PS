class Number < ApplicationRecord
  belongs_to :sports
  belongs_to :players
  has_many :trainings
end
