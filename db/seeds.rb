require_relative("../models/coffee.rb")
require_relative("../models/roaster.rb")
require("pry")

Coffee.delete_all()
Roaster.delete_all()

roaster1 = Roaster.new({
  "name"        =>  "The Barn",
  "location"    =>  "Berlin, Germany"
})
roaster1.save()

roaster2 = Roaster.new({
  "name"        =>  "Dark Arts Coffee",
  "location"    =>  "London, UK"
})
roaster2.save()

roaster3 = Roaster.new({
  "name"        =>  "Crafthouse Coffee",
  "location"    =>  "Sussex, UK"
})
roaster3.save()

roaster4 = Roaster.new({
  "name"        =>  "Fortitude Coffee",
  "location"    =>  "Edinburgh, UK"
})
roaster4.save()

roaster5 = Roaster.new({
  "name"        =>  "Williams & Johnson",
  "location"    =>  "Edinburgh, UK"
})
roaster5.save()

roaster6 = Roaster.new({
  "name"        =>  "The Coffee Collective",
  "location"    =>  "Copenhagen, Denmark"
})
roaster6.save()


coffee1 = Coffee.new({
  "name"            =>  "Volcan Azul",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Filter",
  "region"          =>  "Costa Rica",
  "process"         =>  "Natural",
  "primary_taste"   =>  "Papaya",
  "in_stock"        =>  true
  })
coffee1.save()

coffee2 = Coffee.new({
  "name"            =>  "La Bandera",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Espresso",
  "region"          =>  "Costa Rica",
  "process"         =>  "White Honey",
  "primary_taste"   =>  "Toffee",
  "in_stock"        =>  true
  })
coffee2.save()

coffee3 = Coffee.new({
  "name"            =>  "Wolichu Wachu",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Espresso",
  "region"          =>  "Ethiopia",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Nectarine",
  "in_stock"        =>  true
  })
coffee3.save()

coffee4 = Coffee.new({
  "name"            =>  "Mbokam AA",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Filter",
  "region"          =>  "Kenya",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Raspberry",
  "in_stock"        => true
  })
coffee4.save()

binding.pry
nil

# coffee1 = Coffee.new({
#   "name"            =>
#   "roaster_id"      =>
#   "profile"         =>
#   "region"          =>
#   "process"         =>
#   "primary_taste"   =>
#   "in_stock"        =>
#   })
