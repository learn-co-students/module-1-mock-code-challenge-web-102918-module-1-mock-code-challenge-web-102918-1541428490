class FundingRound
	@@all = []

	def self.all
		@@all
	end

	attr_accessor :type, :investment
	attr_reader :startup, :venture_capitalist

	def initialize(type, amount, startup, investor)
		@type = type
		@investment = amount
		@startup = startup
		@venture_capitalist = investor

		@@all << self
	end
end
