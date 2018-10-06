require_relative("../models/coffee.rb")
require_relative("../models/roaster.rb")
require("pry")

roaster1 = Roaster.new(
  "name"        =>  "The Barn",
  "location"    =>  "Berlin, Germany"
)
roaster1.save()

roaster2 = Roaster.new(
  "name"        =>  "Dark Arts Coffee",
  "location"    =>  "London, UK"
)
roaster2.save()

roaster3 = Roaster.new(
  "name"        =>  "Crafthouse Coffee",
  "location"    =>  "Sussex, UK"
)
roaster3.save()

roaster4 = Roaster.new(
  "name"        =>  "Fortitude Coffee",
  "location"    =>  "Edinburgh, UK"
)
roaster4.save()

roaster5 = Roaster.new(
  "name"        =>  "Williams & Johnson",
  "location"    =>  "Edinburgh, UK"
)
roaster5.save()

roaster6 = Roaster.new(
  "name"        =>  "The Coffee Collective",
  "location"    =>  "Copenhagen, Denmark"
)
roaster6.save()


coffee1
