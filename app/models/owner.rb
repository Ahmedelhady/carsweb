class Owner < ActiveRecord::Base
has_many :cars
has_many :car_models, :through => :cars
end
