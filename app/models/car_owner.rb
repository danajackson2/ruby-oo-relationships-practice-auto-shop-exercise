class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    self.cars.map{|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    @@all.map{|owner| owner.cars.count}.sum / @@all.length
  end

end
