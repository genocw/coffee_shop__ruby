# RUN AFTER seeds.rb TO POPULATE BLURB INFO
require_relative("../models/roaster.rb")
require_relative("../models/coffee.rb")

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

# PROCESS CHURCH
coffee1 = Coffee.find(5)
coffee1.blurb = "Born into a coffee producing family, owner Jose Alfonso has always known that he would one day run a farm of his own. Learning about coffee management and processing from his father as a child, by the time he started he already had a strong drive to insure his farm exceeds the quality of his parents. He has been managing Finca Talquezalar full time for 15 years, and 8 years ago moved to growing specialty coffee. He’s currently working to increase the harvest yield, increasing the area of the farm growing coffee from the current 8 hectares. Sugar cane sweetness, red grape mouthfeel and delicate orange blossom notes."
coffee1.save

# BLACK DEATH
coffee2 = Coffee.find(8)
coffee2.blurb = "This coffee comes from the Inza region of Colombia which has been making a name for itself as a great coffee producing region since the early 2000s. This area is also of great interest to archaeologists with the nearby Tierradentro, a national park containing 64 subterranean tombs dating back to the 6th century A.D. They are decorated with geometric patterns in red representing life, black, death and white the hope of passing to the next life. Milk chocolate body, apple acidity, floral notes and sugary sweet."
coffee2.save

# BO & PEEP
coffee3 = Coffee.find(6)
coffee3.blurb = "In the west of Huehuetenango, located in the jacalteco speaking region lies the pre-hispanic town of San Antonio Huista. This is the closest town to this farm, which is owned and founded by Criselio de Leon. Working with his son David they have been pushing towards better crop quality and environmental practices, like enforcing a no hunting policy in the farm and better water practices. Plum acidity, with a milky mouthfeel cinder toffee sweetness and notes of punes."
coffee3.save

# DEAD BRICK
coffee4 = Coffee.find(7)
coffee4.blurb = "In the west of Huehuetenango, located in the jacalteco speaking region lies the pre-hispanic town of San Antonio Huista. This is the closest town to this farm, which is owned and founded by Criselio de Leon. Working with his son David they have been pushing towards better crop quality and environmental practices, like enforcing a no hunting policy in the farm and better water practices. Plum acidity, with a milky mouthfeel cinder toffee sweetness and notes of punes."
coffee4.save
