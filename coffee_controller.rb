require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/coffee.rb' )
require_relative( './models/roaster.rb')
also_reload( './models/*' )


get("/") do
  erb(:land)
end

# coffees
# INDEX
get("/beans") do
  @coffees = Coffee.all_by_roaster()
  erb(:"coffees/index")
end

# NEW
get("/beans/new") do
  @roasters = Roaster.all()
  erb(:"/coffees/new")
end

# SHOW
get("/beans/:id") do
  id = params["id"].to_i
  @coffee = Coffee.find(id)
  erb(:"/coffees/show")
end

# CREATE
post("/beans") do
  @new_coffee = Coffee.new(params)
  @new_coffee.save()
  redirect to "/beans"
end

# EDIT
get("/beans/:id/edit") do
  coffee_id = params["id"].to_i
  @coffee = Coffee.find(coffee_id)
  @roasters = Roaster.all()
  erb(:"coffees/edit")
end

# UPDATE
post("/beans/:id") do
  coffee = Coffee.new(params)
  coffee.update
  redirect to "/beans"
end

# DESTROY
post("/beans/:id/delete") do
  coffee_id = params["id"].to_i
  coffee = Coffee.find(coffee_id)
  coffee.delete
  redirect to "/beans"
end

# roasters
# INDEX
get("/roasters") do
  @roasters = Roaster.all()
  erb(:"/roasters/index")
end

# NEW
get("/roasters/new") do
  erb(:"roasters/new")
end

# SHOW
get("/roasters/:id") do
  @id = params["id"].to_i
  @roaster = Roaster.find(@id)
  erb(:"roasters/show")
end

# CREATE
post("/roasters") do
  @new_roaster = Roaster.new(params)
  @new_roaster.save()
  redirect to "/roasters"
end

# EDIT
get("/roasters/:id/edit") do
  roaster_id = params["id"].to_i
  @roaster = Roaster.find(roaster_id)
  erb(:"roasters/edit")
end

# UPDATE
post("/roasters/:id") do
  roaster = Roaster.new(params)
  roaster.update
  redirect to "/roasters"
end

# DESTROY
post("/roasters/:id/delete") do
  roaster_id = params["id"].to_i
  roaster = Roaster.find(roaster_id)
  roaster.delete
  redirect to "/roasters"
end
