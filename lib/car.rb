require "car/version"

module Car
  class MyCar
    attr_accessor :color, :car_speed
    attr_reader :year

    def initialize(model, year, color)
      @model = model
      @color = color
      @year = year
      @car_speed = 0.0
    end

    def speed_up(increase)
      @increase = increase
      @car_speed = @car_speed + @increase
    end

    def slow_down(decrease)
      @decrease = decrease
      @car_speed = @car_speed - @decrease
    end

    def shut_down
      if @car_speed == 0
        puts 'Engine off.'
      else
        puts 'Cannot shutdown while driving!'
      end
    end
  end
end
