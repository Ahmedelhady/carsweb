# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cars_models=[{:name=>'Skoda'},{:name=>'Honda'},{:name=>'Toyota'},{:name=>'BMW'},{:name=>'KIA'},{:name=>'Mercedes-Benz'}]


cars_models.each do |cm|
CarModel.create!(cm)
end


car_owners=[{:name=>'Mohamed El-Banna',:tele_number=>'0100559967',:country=>'Egypt',:city=>'PortSaid'},{:name=>'Khaled El-Masry',:tele_number=>'010545454',:country=>'Egypt',:city=>'Giza'},{:name=>'Kareem Sameh',:tele_number=>'010658987',:country=>'Egypt',:city=>'Cairo'},
{:name=>'Moemen',:tele_number=>'010533354',:country=>'Egypt',:city=>'Minya'},
{:name=>'Islam El-Masry',:tele_number=>'010540000',:country=>'Egypt',:city=>'Alex'},

{:name=>'Mostafa Mohamed',:tele_number=>'010544444',:country=>'Egypt',:city=>'Alex'}
]

car_owners.each do |co|
Owner.create!(co)

end


cars=[{:year=>'2008-11-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>5000},{:year=>'2001-10-23',:cylinders=>'1600',:horse_power=>'150',:doors=>'3',:air_bags=>true,:abs=>false,:price=>58000},{:year=>'2009-01-02',:cylinders=>'1600',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>true,:price=>60000},
{:year=>'2011-11-22',:cylinders=>'2700',:horse_power=>'450',:doors=>'4',:air_bags=>false,:abs=>true,:price=>77000},
{:year=>'2007-06-08',:cylinders=>'1600',:horse_power=>'60',:doors=>'4',:air_bags=>false,:abs=>true,:price=>5000},
{:year=>'2012-05-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'3',:air_bags=>true,:abs=>true,:price=>80000},
{:year=>'1999-01-22',:cylinders=>'4200',:horse_power=>'500',:doors=>'4',:air_bags=>true,:abs=>true,:price=>90000},
{:year=>'2002-12-02',:cylinders=>'1600',:horse_power=>'130',:doors=>'3',:air_bags=>true,:abs=>true,:price=>500000},
{:year=>'2003-07-22',:cylinders=>'2200',:horse_power=>'140',:doors=>'4',:air_bags=>false,:abs=>true,:price=>58500},
{:year=>'1998-11-22',:cylinders=>'2200',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>false,:price=>89500},
{:year=>'2006-01-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>false,:price=>51000},
{:year=>'2007-03-22',:cylinders=>'2000',:horse_power=>'550',:doors=>'4',:air_bags=>false,:abs=>true,:price=>100000},
{:year=>'2006-08-28',:cylinders=>'2200',:horse_power=>'230',:doors=>'2',:air_bags=>true,:abs=>false,:price=>52000},
{:year=>'2006-01-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>true,:price=>450000},
{:year=>'2009-12-27',:cylinders=>'3000',:horse_power=>'450',:doors=>'5',:air_bags=>false,:abs=>true,:price=>63000}]


cars.each do |c|
Car.create!(c)
end

Owner.find(1).cars<< Car.where(:cylinders=> 2000)
Owner.find(2).cars<< Car.where(:cylinders=> 3000)
Owner.find(3).cars<< Car.where(:cylinders=> 2700)
Owner.find(4).cars<< Car.where(:cylinders=> 2200)
Owner.find(5).cars<< Car.where(:cylinders=> 1600)
Owner.find(6).cars<< Car.where(:cylinders=> 4200)

CarModel.find(1).cars<< Car.where(:cylinders=> 2000)
CarModel.find(2).cars<< Car.where(:cylinders=> 3000)
CarModel.find(3).cars<< Car.where(:cylinders=> 2700)
CarModel.find(4).cars<< Car.where(:cylinders=> 2200)
CarModel.find(5).cars<< Car.where(:cylinders=> 1600)
CarModel.find(6).cars<< Car.where(:cylinders=> 4200)






new_cars=[
{:year=>'2013',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>150000},
{:year=>'2013',:cylinders=>'2200',:horse_power=>'350',:doors=>'2',:air_bags=>true,:abs=>true,:price=>250000},
{:year=>'2013',:cylinders=>'2000',:horse_power=>'260',:doors=>'4',:air_bags=>true,:abs=>true,:price=>350000},
{:year=>'2013',:cylinders=>'2200',:horse_power=>'350',:doors=>'2',:air_bags=>true,:abs=>true,:price=>250000},
{:year=>'2013',:cylinders=>'2200',:horse_power=>'340',:doors=>'3',:air_bags=>true,:abs=>true,:price=>160000},
{:year=>'2013',:cylinders=>'1200',:horse_power=>'150',:doors=>'2',:air_bags=>true,:abs=>true,:price=>25000},
{:year=>'2013',:cylinders=>'1600',:horse_power=>'120',:doors=>'4',:air_bags=>true,:abs=>true,:price=>85000},
{:year=>'2013',:cylinders=>'2200',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>true,:price=>270000},
{:year=>'2013',:cylinders=>'3200',:horse_power=>'650',:doors=>'2',:air_bags=>true,:abs=>true,:price=>450000},
{:year=>'2013',:cylinders=>'1400',:horse_power=>'150',:doors=>'4',:air_bags=>true,:abs=>true,:price=>55000}]

new_cars.each do|nc|
NewCar.create!(nc)
end

CarModel.find(1).new_cars<< NewCar.where(:cylinders=> 2000)
CarModel.find(2).new_cars<< NewCar.where(:cylinders=> 1200)
CarModel.find(3).new_cars<< NewCar.where(:cylinders=> 3200)
CarModel.find(4).new_cars<< NewCar.where(:cylinders=> 2200)
CarModel.find(5).new_cars<< NewCar.where(:cylinders=> 1600)
CarModel.find(6).new_cars<< NewCar.where(:cylinders=> 1400)





