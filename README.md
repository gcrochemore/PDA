== PDA


	rake db:seed:dump EXCLUDE=[]



	rails generate scaffold vehicle name:string



	rails generate scaffold vehicle_kilometric_statement vehicle:references date:datetime mileage:float use_duration:float