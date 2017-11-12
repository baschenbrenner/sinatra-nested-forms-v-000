class Ship
  attr_accessor :name, :type, :booty

  @@ships =[]
  def initialize(name, type, booty)
  end

  def self.clear
    @@ships=[]
  end
  
  def self.all
    @@ships
  end
end
