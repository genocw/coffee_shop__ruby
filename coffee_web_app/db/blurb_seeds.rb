# RUN AFTER seeds.rb TO POPULATE BLURB INFO
require_relative("../models/roaster.rb")
require_relative("../models/coffee.rb")

# BARN
roaster1 = Roaster.find(1)
roaster1.blurb_sml = "Dedicated to sourcing and roasting highest quality coffees. All The Barn’s beans are from sustainable coffee farming and by paying well over average market rate for green beans, they work towards empowering coffee producers."
roaster1.blurb_lrg = "THE BARN is a leading coffee roaster in Europe and represents the Specialty Coffee Movement at the highest level since 2010. Our beans are served by many coffee shops and home brewers across the globe.
Our vision has been very clear from the start: We focus on making our coffees better and better. No compromise, no fakery - just great coffee. We would never blend our coffees in order to showcase specific flavour profiles and to present each farm we work with. This makes our farmers proud and the product fully traceable.
Our philosophy is to source and roast some of the best coffees available. By paying premium prices we enable coffee farmers to create a sustainable business. All coffees are scoring 86 points and more; they are fresh in season and roasted to perfection.
We choose our beans for quality, cleanliness, sustainability and traceability. We only buy fresh, seasonal crop. It is one of our principles to treasure the value chain from crop to cup.
Our roast style is fully developed but light and clean. We bring out the full flavour potential of each coffee. Working with Single Origin Beans is a lot easier than using Blends - all beans are uniform and of highest grading.
We cup and taste our coffees systematically. Our baristas work with our coffees every day and they give us feedback on all roast batches. All levels of our company are integrated around our roasting - which makes our coffees very special."
roaster1.update

# DARK ARTS
roaster2 = Roaster.find(2)
roaster2.blurb_sml = "Roasting coffee in a railway arch in Hackney since 2014, Dark Arts prides itself on quality and creative design while maintaining affordability for customers. These guys live up to their name, with death metal, motorcycles and sleeves made of ink."
roaster2.blurb_lrg = "Dark Arts Coffee is a coffee roastery started by friends in East London with twisted visions of using alchemy to combine fire, water and magic beans into a divine elixir. We had visions of funnelling the profits into a cult based on our love of the occult, bikes and all things unholy.
However, none of that worked out and now we're fucking sick to death of bullies calling Dark Arts - 'that harry potter coffee'. And roastery isn't even a word.
As a result, instead, we've had to focus on importing the best beans from all over the world and roasting them until they taste good as a brown drink. 
We have never made a business decision sober."
roaster2.update

# CRAFTHOUSE
roaster3 = Roaster.find(3)
roaster3.blurb_sml = "Crafthouse takes time to learn what makes each individual coffee unique, enhancing it's characteristics and delivering it fresh. All of their coffee is roasted in small batches just outside of Brighton, West Sussex."
roaster3.blurb_lrg = "Coffee is such an incredible product. The process of growing to drinking takes a huge amount of effort from so many parties
and we are there for every single stage of it. We work with amazing origin partners who help us secure the best specialty coffee from farms all around the world. All the coffee we purchase has been ethically traded with full traceability to the farms origin. This is hugely important as it gives us assurance the farmers are well paid for the product they produce. Happy farmers, happy coffee. Once sourced we work on exploring its potential through developing its roast profile. The end result is such that we can showcase the product through our wholesale partners or loyal customers. We are very proud of this!
One of our main goals are to make sure costumers are never left in the dark. Its all about loving our product but understanding the culture too - no compromise for absolute quality. Anyone who buys our product will understand our passion to create the best possible coffee experience.
We would love for you to come down and see our micro roastery, its less of a tour, more of a stand around drinking coffee... If that sounds good to you - Get in touch."
roaster3.update

# PROCESS CHURCH
coffee1 = Coffee.find(5)
coffee1.blurb = "Born into a coffee producing family, owner Jose Alfonso has always known that he would one day run a farm of his own. Learning about coffee management and processing from his father as a child, by the time he started he already had a strong drive to insure his farm exceeds the quality of his parents. He has been managing Finca Talquezalar full time for 15 years, and 8 years ago moved to growing specialty coffee. He’s currently working to increase the harvest yield, increasing the area of the farm growing coffee from the current 8 hectares. Sugar cane sweetness, red grape mouthfeel and delicate orange blossom notes."
coffee1.update

# BLACK DEATH
coffee2 = Coffee.find(8)
coffee2.blurb = "This coffee comes from the Inza region of Colombia which has been making a name for itself as a great coffee producing region since the early 2000s. This area is also of great interest to archaeologists with the nearby Tierradentro, a national park containing 64 subterranean tombs dating back to the 6th century A.D. They are decorated with geometric patterns in red representing life, black, death and white the hope of passing to the next life. Milk chocolate body, apple acidity, floral notes and sugary sweet."
coffee2.update

# BO & PEEP
coffee3 = Coffee.find(6)
coffee3.blurb = "In the west of Huehuetenango, located in the jacalteco speaking region lies the pre-hispanic town of San Antonio Huista. This is the closest town to this farm, which is owned and founded by Criselio de Leon. Working with his son David they have been pushing towards better crop quality and environmental practices, like enforcing a no hunting policy in the farm and better water practices. Plum acidity, with a milky mouthfeel cinder toffee sweetness and notes of punes."
coffee3.update

# DEAD BRICK
coffee4 = Coffee.find(7)
coffee4.blurb = "In the west of Huehuetenango, located in the jacalteco speaking region lies the pre-hispanic town of San Antonio Huista. This is the closest town to this farm, which is owned and founded by Criselio de Leon. Working with his son David they have been pushing towards better crop quality and environmental practices, like enforcing a no hunting policy in the farm and better water practices. Plum acidity, with a milky mouthfeel cinder toffee sweetness and notes of punes."
coffee4.update

# VOLCAN AZUL
coffee5 = Coffee.find(1)
coffee5.blurb = "Volcan Azul was born of a dream pursued by two pioneering entrepreneurs, Alejo C. Jiménez and Wilhelm Kahle. Who aspired to produce the best coffee in the world to meet a growing demand for premium coffee. Our microlot is extremely clean: Tropical notes of papaya and pineapple. Combined with flavours of milk chocolate and lively pomegranate. Complex.
Volcan Azul is located on the edges of the Barva Volcano. For 5 generations the producers have been growing excellent coffees. The descendants have purchased natural tropical forest to protect the environment. It is their contribution to a better future for generations to come."
coffee5.update

# LA BANDERA
coffee6 = Coffee.find(2)
coffee6.blurb = "La Bandera is located in the Tarrazu Valley where one can find some of the finest coffees of the country. The climate and the volcanic soil offer perfect growing conditions. This coffee has a wonderful texture with a mouthcoating finish. Tastes of toffee, milk chocolate, fruity red berries and wild honey are predominant.
Before taking over the farming from his father, Diego spent two years in the US to save up money to invest in a Micro Mill on site. With 20 hectares of red and yellow Catuai he is running a very focused and quality driven operation."
coffee6.update

# WOLICHU WACHU
coffee7 = Coffee.find(3)
coffee7.blurb = "Wolichu Wachu washing station was founded in 2017 and serves 4,500 local smallholder producers in and around the town of Haro Wachu. The average farm size is 0.5 hectars. This coffee has perfumey notes of nectarine, black tea, bergamot and caramel. The mouthfeel is elegant.
In this special prep processing, cherries are sorted after delivery before being depulped and fermented underwater for 48–72 hours. Then the coffee is washed, and gets another soak that lasts 8–16 hours before being dried on raised beds for 12 days."
coffee7.update

# MBOKAM AA
coffee8 = Coffee.find(4)
coffee8.blurb = "Mbokam Estate has a fantastic micro climate: The farm is north facing toward Mount Kenya and is divided by a creek. Cooler mornings and evenings are creating an unusual cup profile: This coffee is lighter and more floral than other Kenyans. Beautiful notes of rose, raspberry and currants - supported by a hibiscus finish. Tealike bod and perfumy flavours.
We are building a close relationship with the family. New laws in Kenya allow direct  purchasing from smaller estates. Which is an opportunity for us to sponsor direct sustainability projects in order to establish consistently high coffee qualities. We bought the whole farm output and feature ABs and PBs later this season."
coffee8.update
