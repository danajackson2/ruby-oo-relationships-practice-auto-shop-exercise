class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  #if/else with raise raises an error if the car's classification and mechanic's speciality don't match
  def initialize(make, model, classification, owner, mechanic)
    if classification == mechanic.specialty
      @make = make
      @model = model
      @classification = classification
      @owner = owner
      @mechanic = mechanic
      @@all << self
    else
      raise "Sorry, #{mechanic.name} doesn't specialize in #{classification} cars."
    end
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map{|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select{|mechanic| mechanic.specialty == classification}
  end

end
