require "games_back/version"

module GamesBack
  class << self
    def calculate(records)
      results = records.map do |player, record|
        if player == 1
          [player, nil]
        else
          [player, games_behind(records[1], record)]
        end
      end
      Hash[results]
    end

    private

    def games_behind(player_a, player_b)
      player_a_wins = player_a[0]
      player_a_losses = player_a[1]
      player_b_wins = player_b[0]
      player_b_losses = player_b[1]

      (player_a_wins - player_b_wins + player_b_losses - player_a_losses) / 2.0
    end
  end
end
