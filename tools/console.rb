require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new('Hooli', 'Gavin Belson ', 'hooli.com')
s2 = Startup.new('Pied Piper', 'Richard Hendricks', 'piedpiper.com')

vc1 = VentureCapitalist.new('Russ Hanneman', 1100000000)
vc2 = VentureCapitalist.new('Laurie Bream', 2000000000)
vc3 = VentureCapitalist.new('Peter Gregory', 999999999)

fr1 = FundingRound.new(s1, vc1, 'Angel', 10000)
fr2 = FundingRound.new(s2, vc3, 'Seed', 100000)
fr3 = FundingRound.new(s1, vc2, 'Series A', 10000000)
fr3 = FundingRound.new(s1, vc1, 'Series B', 999999)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line