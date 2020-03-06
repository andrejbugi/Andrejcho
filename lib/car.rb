require "car/version"

module Car
  class MyCar
    SPEED_OFFSET = 15

    attr_accessor :color, :car_speed
    attr_reader :year, :defects

    def initialize(model, year, color)
      @model = model
      @color = color
      @year = year
      @car_speed = 0.0
      @defects = []
    end

    def speed_up(increase = SPEED_OFFSET)
      @car_speed += increase
    end

    def slow_down(decrease = SPEED_OFFSET)
      @car_speed -= decrease
    end

    def shut_down
      @car_speed = 0
    end

    def spray_paint(arg)
      @color = arg
    end

    def add_defect(defect)
      @defects.push(defect)
    end

    def service_info
      defects = @defects.join(', ')
      "Defects to be fixed: #{defects}."
    end
  end
end
