require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/coffee.rb' )
require_relative( './models/roaster.rb')
also_reload( './models/*' )


get("/") do
  erb(:land)
end

# INDEX - coffees
get("/beans") do
  @coffees = Coffee.all()
  erb(:"coffees/index")
end

# SHOW - coffees
get("/beans/:id") do
  @id = params["id"].to_i
  @coffee = Coffee.find(@id)
  erb(:"/coffees/show")
end

# INDEX - roasters
get("/roasters") do
  @roasters = Roaster.all()
  erb(:"/roasters/index")
end

# SHOW - roasters
# get("roasters/:id") do
#   @id = params["id"].to_i
#   @roaster = Roaster.find(@id)
#   erb(:"roasters/show")
# end
