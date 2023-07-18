class Sport < ApplicationRecord
  belongs_to :user
  has_many :players, foreign_key: 'sport_id'
  has_many :numbers, foreign_key: 'sport_id'
end
