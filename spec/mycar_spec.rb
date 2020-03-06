RSpec.describe Car::MyCar do
    let(:merc) { Car::MyCar.new('mercedes', 2015, 'black') }
    let(:failure) { 'water pump' }

    it 'creates instance of MyCar class' do
        expect(merc).to be_instance_of(Car::MyCar)
    end

    it 'has starting speed defined to 0' do
        expect(merc.car_speed).to eq(0)
    end

    it 'is speeding up' do
        merc.speed_up(45)
        expect(merc.car_speed).to be_within(44).of(46)
    end

    it 'turns off' do
        merc.speed_up
        merc.shut_down
        expect(merc.car_speed).to eq(0)
    end

    it 'speeds up by default' do
        merc.speed_up
        expect(merc.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
    end

    it 'slows down' do
        merc.slow_down(20)
        expect(merc.car_speed).to eq(-20)
    end

    it 'slows down by default' do
        merc.slow_down
        expect(merc.car_speed).to eq(-Car::MyCar::SPEED_OFFSET)
    end

    it 'changes the color of the object' do
      merc.spray_paint :blue
      expect(merc.color).to eq(:blue)
    end

    it 'has no defects' do
      expect(merc.defects).not_to include(failure)
    end

    it 'adds defects' do
      merc.add_defect(failure)
      expect(merc.defects).to include(failure)
    end

    it 'lists all the defects' do
      merc.add_defect(failure)
      merc.add_defect('oil leak')
      expect(merc.service_info).to eq("Defects to be fixed: #{failure}, oil leak.")
    end
end
