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
  @coffees = Coffee.all()
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
  @coffee = Coffee.new(params)
  @coffee.save()
  redirect to "/beans"
end

# EDIT

# UPDATE

# DESTROY


# roasters
# INDEX
get("/roasters") do
  @roasters = Roaster.all()
  erb(:"/roasters/index")
end

# SHOW
get("/roasters/:id") do
  @id = params["id"].to_i
  @roaster = Roaster.find(@id)
  erb(:"roasters/show")
end

# NEW

# CREATE

# EDIT

# UPDATE

# DESTROY
