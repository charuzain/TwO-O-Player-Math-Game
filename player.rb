
class Player
  # attr_reader :name
  def initialize(name)
    # this is private
    @name = name
    @lives = 3
  end

#getter for name
  def name
    @name
  end

#getter for lives
  def lives
    @lives
  end

  #setter for lives
  def lives=(lives)
    @lives = lives
  end

 
end


   
