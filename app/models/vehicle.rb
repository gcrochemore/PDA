class Vehicle < ActiveRecord::Base
  has_many :vehicle_kilometric_statements
  has_many :vehicle_fuel_intake


  def events
  	events = vehicle_kilometric_statements + vehicle_fuel_intake

  	return events.sort_by(&:date)
  end	
end
