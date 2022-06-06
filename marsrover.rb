
   
class Location
    LEFT = {
      n: :w,
      e: :n,
      s: :e,
      w: :s
    }
  
    RIGHT = {
      n: :e,
      e: :s,
      s: :w,
      w: :n
    }
  
    def initialize(x:, y:, direction:)
      @x         = x
      @y         = y
      @direction = direction
    end
  
    def left
      @direction = LEFT.fetch(@direction)
      self
    end
  
    def right
      @direction = RIGHT.fetch(@direction)
      self
    end
  
    def move
      case direction
      when :n
        self.y += 1
      when :e
        self.x += 1
      when :s
        self.y -= 1
      when :w
        self.x -= 1
      end
      self
    end
  
    attr_reader :x, :y, :direction
  
    private
  
    attr_writer :x, :y, :direction
  end