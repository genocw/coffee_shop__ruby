# RUN AFTER seeds.rb TO POPULATE BLURB INFO
require_relative("../models/roaster.rb")

# BARN
roaster1 = Roaster.find(1)
roaster1.blurb_sml = "Dedicated to sourcing and roasting highest quality coffees. All The Barn’s beans are from sustainable coffee farming and by paying well over average market rate for green beans, they work towards empowering coffee producers."
roaster1.update

# DARK ARTS
roaster2 = Roaster.find(2)
roaster2.blurb_sml = "Roasting coffee in a railway arch in Hackney since 2014, Dark Arts prides itself on quality and creative design while maintaining affordability for customers. These guys live up to their name, with death metal, motorcycles and sleeves made of ink."
roaster2.update

# CRAFTHOUSE
roaster3 = Roaster.find(3)
roaster3.blurb_sml = "Crafthouse takes time to learn what makes each individual coffee unique, enhancing it's characteristics and delivering it fresh. All of their coffee is roasted in small batches just outside of Brighton, West Sussex."
roaster3.update
