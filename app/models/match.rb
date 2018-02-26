class Match < ApplicationRecord
  belongs_to :league
  #has_many :players
  belongs_to :player1, class_name: 'Player', foreign_key: 'player_1'
  belongs_to :player2, class_name: 'Player', foreign_key: 'player_2'
  #has_one :player_1_id, class_name: 'Player', foreign_key: :id
  #has_one :player_2_id, class_name: 'Player', foreign_key: :id
  #has_one :player
end