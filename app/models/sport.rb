class Sport < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'users_id'
  has_many :players, foreign_key: 'sports_id'
  has_many :numbers, foreign_key: 'sports_id'
end
