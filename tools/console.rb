require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

thecompany = Startup.new("The Company", "J", "Tech")
techcompany = Startup.new("Tech Company", "K", "Tech")

bob = VentureCapitalist.new("Bob", 1000000000000.0)
tracy = VentureCapitalist.new("Tracy", 2000000000000000.0)

seedround = FundingRound.new(thecompany, tracy, "Seed", 50000000.0)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
