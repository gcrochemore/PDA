== PDA


	rake db:seed:dump EXCLUDE=[]



	rails generate scaffold vehicle name:string



	rails generate scaffold vehicle_kilometric_statement vehicle:references date:datetime mileage:float use_duration:float



	rails generate scaffold account name:string owner:references bank:references initial_amount:float



	rails generate scaffold resume name:string user:references


	rails generate scaffold skill name:string

	rails generate scaffold resume_has_skill resume:references skill:references level:integer

	rails generate scaffold education resume:references name:string scholl:string begin_date:date end_date:date 

	rails generate scaffold work_experience resume:references name:string scholl:string begin_date:date end_date:date 