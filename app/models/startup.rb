class Startup
	@@all = []

	def self.all
		@@all
	end

	def self.find_by_founder(founder)
		@@all.find{|startup| startup.founder == founder }
	end

	def self.domains
		@@all.map{|startup| startup.domain }
	end

	attr_reader :name, :founder, :domain

	def initialize(name, founder, domain)
		@name = name
		@founder = founder
		@domain = domain

		@@all << self
	end

	def pivot(domain, name)
		@domain = domain
		@name = name
	end

	def sign_contract(investor, type, amount)
		FundingRound.new(type, amount, self, investor)
	end

	def rounds
		FundingRound.all.select{|round| round.startup == self }
	end

	def num_funding_rounds
		rounds.length
	end

	def total_funds
		rounds.map{|round| round.investment }.reduce(:+)
	end

	def investors
		rounds.map{|round| round.venture_capitalist }.uniq
	end

	def big_investors
		investors.select{|investor| VentureCapitalist.tres_commas_club.include?(investor) }.uniq
	end
end
