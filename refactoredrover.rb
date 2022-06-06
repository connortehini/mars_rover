class Rover 
    def initialize (x, y, direction)
        @x = x
        @y = y
        @direction = direction
    end 

    def instruction(position)
        on_mars = false
        position.split('').each do |input| 
            if input == 'L'
                left 
            elsif input == 'R'
                right
            elsif input == 'M'
                on_mars = move
            else 
                puts "You have entered the incorrect instructions"
            end 
        end
        puts "This is where the rover should be: x= #{@x} y = #{@y} facing = #{@direction}"
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
            puts "the rover is facing North."
          @direction = 'W'
        elsif @direction == 'W'
            puts "the rover is facting West"
          @direction = 'S'
        elsif @direction == 'E'
            puts "the rover is facting East"
          @direction = 'N'
        else
          puts "the rover is facing South"
          @direction = 'E'
        end
      end

    def move
        if @direction == 'N'
         @y += 1
        elsif @direction == 'E'
         @x += 1
        elsif @direction == 'S'
         @y -= 1
        else @direction == 'W'
         @x -= 1
        end 
    end 
end 