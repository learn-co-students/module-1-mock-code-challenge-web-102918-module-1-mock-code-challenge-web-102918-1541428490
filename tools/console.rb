require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

codeschool = Startup.new("Code School", "Ruth", "Ed Tech")

puppykisses = Startup.new("Puppy Kisses", "Eden", "Animals")

# puppykisses.pivot("puppy day care", "day_care")

isiah = VentureCapitalist.new("Isiah", 1000000001)
crystal = VentureCapitalist.new("Crystal", 5000000)
nicole = VentureCapitalist.new("Nicolette", 1000000001)
VentureCapitalist.tres_commas_club

FundingRound.new(codeschool, isiah, "Series A", 1000)
FundingRound.new(puppykisses, crystal, "Series B", 10000)
FundingRound.new(puppykisses, nicole, "Series B", 10000)
FundingRound.new(puppykisses, crystal, "Series A", 100000)

codeschool.sign_contract(crystal, "Series B", 1000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line