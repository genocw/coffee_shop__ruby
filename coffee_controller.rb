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
get("/coffees") do
  @coffees = Coffee.all()
  erb(:index)
end

# SHOW - coffees
get("/coffees/:id") do
  @id = params["id"].to_i
  @coffee = Coffee.find(@id)
  erb(:show)
end

# INDEX - roasters

# SHOW - roasters
