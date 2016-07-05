require "games_back/version"

module GamesBack
  class << self
    def calculate(records)
      Hash[records.map do |id, record|
        [id, nil]
      end]
    end
  end
end
