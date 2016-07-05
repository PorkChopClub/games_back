require "games_back/version"

module GamesBack
  class << self
    def calculate(records)
      results = records.map do |player, record|
        [player, record[0] - record[1]]
      end.sort_by do |row|
        row[1]
      end.reverse

      top_player = results.first

      results = results.map do |row|
        if row[1] == top_player[1]
          [row[0], nil]
        else
          [row[0], (top_player[1] - row[1]) / 2.0]
        end
      end
      Hash[results]
    end
  end
end
