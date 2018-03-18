class Fish

  attr_reader :species

  def initialize(input_species)
    @species = input_species
  end

  def say_im_a_fish
    return "I'm a #{@species}! Please don't eat me."
  end

end
