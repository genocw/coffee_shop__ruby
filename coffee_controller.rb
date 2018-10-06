require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/coffee.rb' )
require_relative( './models/roaster.rb')
also_reload( './models/*' )

# INDEX
get("/") do
  erb(:land)
end
