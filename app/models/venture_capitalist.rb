class VentureCapitalist
	@@all = []

	def self.all
		@@all
	end

	def self.tres_commas_club
		@@all.select{|venture| venture.total_worth >= 1000000000 }
	end

	attr_accessor :total_worth
	attr_reader :name

	def initialize(name, worth)
		@name = name
		@total_worth = worth

		@@all << self
	end

	def offer_contract(startup, type, amount)
		FundingRound.new(type, amount, startup, self)
	end

	def funding_rounds
		FundingRound.all.select{|round| round.venture_capitalist == self }
	end

	def portfolio
		funding_rounds.map{|round| round.startup }.uniq
	end

	def biggest_investment
		high = funding_rounds.first

		funding_rounds.each do |round|
			if round.investment > high.investment
				high = round
			end
		end

		high
	end

	def invested(domain)
		domain_rounds = funding_rounds.select{|round| round.startup.domain == domain }
		domain_rounds.map{|round| round.investment }.reduce(:+)
	end
end
