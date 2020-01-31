class Startup

  attr_reader :name, :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def self.all 
    @@all
  end

  def pivot(name, domain)
    @name = name
    @domain = domain
  end

  def self.find_by_founder(name)
    @@all.find{|startup| startup.founder == name}
  end

  def self.domains
    @@all.map{|startup| startup.domain}
  end

  def sign_contract(vc, type, investment)
    FundingRound.new(self, vc, type, investment)
  end

  def funding_rounds
    FundingRound.all.filter{|round| round.startup == self}
  end

  def num_funding_rounds
    funding_rounds.count
  end

  def total_funds
    funding_rounds.sum(&:investment)
  end

  def investors
    funding_rounds.map{|fr| fr.venture_capitalist}.uniq
  end

  def big_investors
    investors.filter{|vc| VentureCapitalist.tres_commas_club.include?(vc)}
  end

end
