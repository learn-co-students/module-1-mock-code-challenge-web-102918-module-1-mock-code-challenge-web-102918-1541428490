class Startup
    attr_accessor :name
    attr_reader :founder, :domain
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        self.class.all << self
    end

    def self.all
        @@all 
    end

    def pivot(new_name,new_domain) 
        self.domain = new_domain
        self.name = new_name
        self
    end

    def self.find_by_founder(name)
        all.find{|startup| startup.founder == name}
    end

    def self.domains
        all.map{|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, amount_invested)
        FundingRound.new(self, venture_capitalist, type, amount_invested)
    end

    def funding_rounds 
        FundingRound.all.select{|funding_round| funding_round.startup == self}
    end
    def num_funding_rounds
        funding_rounds.count
    end

    def total_funds 
        list_of_funds = funding_rounds.map{|funding_round| funding_round.investment}

        list_of_funds.inject(:+)
    end

    def investors
        list_of_investors = funding_rounds.map{|funding_round| funding_round.venture_capitalist}

        list_of_investors.uniq
    end

    def big_investors
        investors.select{|investor| investor.tres_commas_club}
    end

    private

    def domain=(domain)
        @domain = domain
    end


end
