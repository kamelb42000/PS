class Player < ApplicationRecord
  belongs_to :sport, class_name: 'Sport', foreign_key: 'sports_id'
  has_many :numbers

end
