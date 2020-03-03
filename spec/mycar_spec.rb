RSpec.describe Car::MyCar do
    it "creates instance of MyCar class" do
        volvo = Car::MyCar.new('volvo', 2018, 'yellow')
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defined to 0" do
        volvo = Car::MyCar.new('volvo', 2018, 'yellow')
        expect(volvo.car_speed).to eq(0)
    end

    it "is able to speed up" do
        merc = Car::MyCar.new('mercedes', 2015, 'black')
        merc.speed_up(45)
        expect(merc.car_speed).to be_within(44).of(46)
    end

    it "is braking great" do
        merc = Car::MyCar.new('mercedes', 2015, 'black')
        merc.slow_down(40)
        expect(merc.car_speed).to be == -40
    end
    
    it "turn off working correctly" do
        merc = Car::MyCar.new('mercedes', 2015, 'black')
        expect(merc.shut_down).to be_nil
        merc.speed_up(40)
        merc.slow_down(30)
        expect(merc.shut_down).to be_nil
    end
end