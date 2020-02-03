class Player
  def initialize name
    @name = name
    @lives=3
  end
   def name
    @name
  end
  def get
    @lives
  end

   def lives(points)
    @lives +=points 
   end
   def dead?
    @lives <= 1
  end
end 