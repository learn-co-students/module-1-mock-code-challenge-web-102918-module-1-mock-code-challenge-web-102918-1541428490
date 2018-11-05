require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Startup.new("Twotter", "Sam", "social media")
s2 = Startup.new("EyeStory", "Mork Zackerbug", "social media")
s3 = Startup.new("CombatSetting", "Analog Slights", "video game")

c1 = VentureCapitalist.new("John Lennon", rand(10349818947289147) + 100000)
c2 = VentureCapitalist.new("Mark Ruffalo", rand(10349818947289147) + 100000)
c3 = VentureCapitalist.new("Sir Isaac Newton", rand(10349818947289147) + 100000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line