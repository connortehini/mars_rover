class Rover 
  def initialize (x, y, direction)
      @x = x
      @y = y
      @direction = direction
  end 

  def instruction(position)
    on_mars = true
      position.split('').each do |input| 
          if input.upcase == 'L'
              left 
          elsif input.upcase == 'R'
              right
          elsif input.upcase == 'M'
              on_mars = move 
          else 
              puts "You have entered the incorrect instruction"   
              break
          end
          if on_mars == false
            puts "You have fallen off Mars."  
            break
          end  
      end 
      if on_mars == true
      puts "This is where the rover should be: x= #{@x} y = #{@y} facing = #{@direction}"
      end
  end 

  def right 
    if @direction == 'S'
        puts "The rover is facing West."
        @direction = 'W'
    elsif @direction == 'N'
        puts "The rover is facing East."
        @direction = 'E'
    elsif @direction == 'W'
        puts "The rover is facing North."
        @direction = 'N'
    else @direction == 'E'
        puts "The rover is facing South."
        @direction = 'S'
    end 
  end 
 
  def left
      if @direction == 'N'
          puts "the rover is facing West."
        @direction = 'W'
      elsif @direction == 'W'
          puts "the rover is facing South."
        @direction = 'S'
      elsif @direction == 'S'
          puts "the rover is facing East."
        @direction = 'E'
      else @direction == 'E'
        puts "the rover is facing North"
        @direction = 'N'
      end
    end

    def move
      if @direction == 'N' && @y < 5 
       @y += 1
       return true
      elsif @direction == 'E' && @x < 5
       @x += 1
       return true
      elsif @direction == 'S' && @y > 0
       @y -= 1
       return true
      elsif @direction == 'W' && @x > 0 
       @x -= 1
       return true
      else (@y > 5 || @y < 0) || (@x > 5 || @x < 0)
        return false
      end 
  end 
end 