# RUN BEFORE blurb_seeds.rb

require_relative("../models/coffee.rb")
require_relative("../models/roaster.rb")
require("pry")

Coffee.delete_all()
Roaster.delete_all()

roaster1 = Roaster.new({
  "name"        =>  "The Barn",
  "location"    =>  "Berlin, Germany",
  "image"       =>  "/images/barn/barn.jpg"
})
roaster1.save()

roaster2 = Roaster.new({
  "name"        =>  "Dark Arts Coffee",
  "location"    =>  "London",
  "image"       =>  "/images/dark_arts/darkarts.jpg"
})
roaster2.save()

roaster3 = Roaster.new({
  "name"        =>  "Crafthouse Coffee",
  "location"    =>  "Sussex, UK",
  "image"       =>  "/images/crafthouse/crafthouse.jpg"
})
roaster3.save()

roaster2.location = "London, UK"
roaster2.update

# roaster4 = Roaster.new({
#   "name"        =>  "Fortitude Coffee",
#   "location"    =>  "Edinburgh, UK"
# })
# roaster4.save()
#
# roaster5 = Roaster.new({
#   "name"        =>  "Williams & Johnson",
#   "location"    =>  "Edinburgh, UK"
# })
# roaster5.save()


coffee1 = Coffee.new({
  "name"            =>  "Volcan Azul",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Filter",
  "origin"          =>  "Costa Rica",
  "process"         =>  "Natural",
  "primary_taste"   =>  "Papaya",
  "image"           =>  "/images/barn/barn_volcan_azul.jpg"
  })
coffee1.save()

coffee2 = Coffee.new({
  "name"            =>  "La Bandera",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Espresso",
  "origin"          =>  "Costa Rica",
  "process"         =>  "White Honey",
  "primary_taste"   =>  "Toffee",
  "image"           =>  "/images/barn/barn_la_bandera.jpg"
  })
coffee2.save()

coffee3 = Coffee.new({
  "name"            =>  "Wolichu Wachu",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Espresso",
  "origin"          =>  "Ethiopia",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Nectarine",
  "image"           =>  "/images/barn/barn_wolichu_wachu.jpg"
  })
coffee3.save()

coffee4 = Coffee.new({
  "name"            =>  "Mbokam AA",
  "roaster_id"      =>  roaster1.id,
  "profile"         =>  "Filter",
  "origin"          =>  "Kenya",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Raspberry",
  "image"           =>  "/images/barn/barn_mbokam_aa.jpg"
  })
coffee4.save()

coffee5 = Coffee.new({
  "name"            =>  "Process Church",
  "roaster_id"      =>  roaster2.id,
  "profile"         =>  "Filter",
  "origin"          =>  "El Salvador",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Orange Blossom",
  "image"           =>  "/images/dark_arts/da_process_church.jpg"
  })
coffee5.save()

coffee6 = Coffee.new({
  "name"            =>  "Bo and Peep",
  "roaster_id"      =>  roaster2.id,
  "profile"         =>  "Filter",
  "origin"          =>  "Guatemala",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Plum",
  "image"           =>  "/images/dark_arts/da_bo_and_peep.jpg"
  })
coffee6.save()

coffee7 = Coffee.new({
  "name"            => "Dead Brick",
  "roaster_id"      =>  roaster2.id,
  "profile"         =>  "Espresso",
  "origin"          =>  "Guatemala",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Cacao",
  "image"           =>  "/images/dark_arts/da_dead_brick.jpg"
  })
coffee7.save()

coffee8 = Coffee.new({
  "name"            =>  "Black Death",
  "roaster_id"      =>  roaster2.id,
  "profile"         =>  "Filter",
  "origin"          =>  "Colombia",
  "process"         =>  "Washed",
  "primary_taste"   =>  "Milk Choclate & Apple",
  "image"           =>  "/images/dark_arts/da_black_death.jpg"
  })
coffee8.save()

coffee8.profile = "Omni"
coffee8.update

# binding.pry
# nil

# coffee1 = Coffee.new({
#   "name"            =>
#   "roaster_id"      =>
#   "profile"         =>
#   "origin"          =>
#   "process"         =>
#   "primary_taste"   =>,
# "image"           =>  ""
#   "in_stock"        =>
#   })
