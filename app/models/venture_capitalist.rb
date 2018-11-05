class VentureCapitalist
  attr_accessor :name, :total_worth, :startup, :funding_rounds
  @@all = []
  # - `VentureCapitalist#name`
  #   - returns a **string** that is the venture capitalist's name
  # - `VentureCapitalist#total_worth`
  #   - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
  def initialize(name, total_worth)
    @total_worth = total_worth
    @name = name
    @@all << self
  end
  def self.all
    # - `VentureCapitalist.all`
    #   - returns an array of all venture capitalists
    @@all
  end
  def self.tres_commas_club
    # - `VentureCapitalist.tres_commas_club`
    #   - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)
    richie_rich = self.all select do |individual|
      individual.total_worth >= 1000000000
    end
    richie_rich
  end
end
# - `VentureCapitalist#offer_contract`
#   - given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# - `VentureCapitalist#funding_rounds`
#   - returns an array of all funding rounds for that venture capitalist
# - `VentureCapitalist#portfolio`
#   - Returns a **unique** list of all startups this venture capitalist has funded
# - `VentureCapitalist#biggest_investment`
#   - returns the largest funding round given by this venture capitalist
# - `VentureCapitalist#invested`
#   - given a **domain string**, returns the total amount invested in that domain
