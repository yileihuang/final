# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Touristsite.delete_all
Group.delete_all
Member.delete_all
User.delete_all
Visit.delete_all
Message.delete_all

# Create the touristsite
puts "Creating touristsite..."
Santiago_zoo=Touristsite.create(country: "Chile", city: "Santiago", name: "Santiago_zoo", image: "zoo.jpeg", Summary: "The Chilean National Zoo (Zoológico Nacional de Chile) is a 4.8-hectare (12-acre) zoo that was founded in 1925 in Santiago, Chile. Located at the foot of San Cristóbal Hill in what is known as the Santiago Metropolitan Park (Parque Metropolitano de Santiago), the zoo is home to thousands of animals representing 158 species. Unique exhibits feature Chilean native animals and birds including rare and endangered species.")
Darwin_station=Touristsite.create(country: "Ecuador", city: "Galapagos", name: "Darwin_station", image: "darwinstation.jpg", Summary: "The Charles Darwin Research Station (CDRS) is a biological research station operated by the Charles Darwin Foundation. It is located on the shore of Academy Bay in the village of Puerto Ayora on Santa Cruz Island in the Galapagos Islands, with satellite offices on Isabela and San Cristóbal islands.")
Great_wall=Touristsite.create(country: "China", city: "Beijing", name: "Great_wall", image: "greatwall.jpg", Summary: "The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of China to protect the Chinese states and empires against the raids and invasions of the various nomadic groups of the Eurasian Steppe. Several walls were being built as early as the 7th century bc;[3] these, later joined together and made bigger and stronger, are now collectively referred to as the Great Wall.[4] Especially famous is the wall built 220–206 bc by Qin Shihuang, the first Emperor of China. Little of that wall remains. Since then, the Great Wall has on and off been rebuilt, maintained, and enhanced; the majority of the existing wall is from the Ming Dynasty.")
Louvre_museum=Touristsite.create(country: "France", city: "Paris", name: "Louvre_museum", image: "Louvremuseum.jpg", Summary: "The Louvre or the Louvre Museum (French: Musée du Louvre, pronounced: [myze dy luvʁ]) is one of the world's largest museums and a historic monument. A central landmark of Paris, France, it is located on the Right Bank of the Seine in the 1st arrondissement (district). Nearly 35,000 objects from prehistory to the 21st century are exhibited over an area of 60,600 square metres (652,300 square feet). The Louvre is the world's most visited museum, and received more than 9.7 million visitors in 2012.")
Berlin_wall=Touristsite.create(country: "Germany", city: "Berlin", name: "Berlin_wall", image: "berlinwall.jpg", Summary: "The Berlin Wall (German: Berliner Mauer) was a barrier that divided Berlin from 1961 to 1989,[1] constructed by the German Democratic Republic (GDR, East Germany) starting on 13 August 1961, that completely cut off (by land) West Berlin from surrounding East Germany and from East Berlin until it was opened in November 1989.[2] Its demolition officially began on 13 June 1990 and was completed in 1992.")

# Create the groups
puts "Creating groups..."
group1=Group.create(name: "South America", summary: "Once in a lifetime experience to explore the mystery and outdoor adventures!", image: "sa.jpg")
group2=Group.create(name: "East Asia", summary: "Where the economy magic begins!", image: "ea.jpg")
group3=Group.create(name: "West Europe", summary: "Prepared to be amazed by this facinating cultural land", image: "eu.jpg")

# Create the users
puts "Creating users..."
Alice=User.create(netid: "yhs456", name: "Alice Cui", graduation: "2015", section: "hedgehog", photo: "alice.jpg", email: "alice@kellogg.northwestern.edu", password: "1234", admin: true)
Alex=User.create(netid: "sxty736", name: "Alex Bourdeau", graduation: "2015", section: "hedgehog", photo: "alex.jpg", email: "alex@kellogg.northwestern.edu", password: "1234", admin: false)
Geof=User.create(netid: "gry325", name: "Geof Alexander", graduation: "2016", section: "roadrunner", photo: "goef.jpg", email: "goef@kellogg.northwestern.edu", password: "1234", admin: false)
Vincent=User.create(netid: "vsu419", name: "Vincent Chang", graduation: "2015", section: "hedgehog", photo: "vincent.jpg", email: "vincent@kellogg.northwestern.edu", password: "1234", admin: false)
Yajur=User.create(netid: "yirr43", name: "Yajur Kappor", graduation: "2015", section: "roadrunner", photo: "yajur.jpg", email: "yajur@kellogg.northwestern.edu", password: "1234", admin: false)

# Create the members
puts "Creating members..."
member1=Member.create(group_id: group1.id, user_id: Alice.id, expense: 50.1)
member2=Member.create(group_id: group2.id, user_id: Alex.id, expense: 200.0)
member3=Member.create(group_id: group3.id, user_id: Geof.id, expense: 14.67)
member4=Member.create(group_id: group3.id, user_id: Vincent.id, expense: 36.54)
member5=Member.create(group_id: group2.id, user_id: Yajur.id, expense: 29.5)

# Create the visits
puts "Creating visits..."
Visit1=Visit.create(group_id: group1.id, touristsite_id: Santiago_zoo.id)
Visit2=Visit.create(group_id: group2.id, touristsite_id: Great_wall.id)
Visit3=Visit.create(group_id: group3.id, touristsite_id: Louvre_museum.id)
Visit4=Visit.create(group_id: group3.id, touristsite_id: Berlin_wall.id)
Visit5=Visit.create(group_id: group1.id, touristsite_id: Darwin_station.id)

# Create the message
puts "Creating messages..."
Message1=Message.create(group_id:group1.id, content: "I'm so excited!")
Message2=Message.create(group_id:group2.id, content: "Where are we meeting?")
Message3=Message.create(group_id:group3.id, content: "What should we bring?")
Message4=Message.create(group_id:group1.id, content: "Anyone knows about the weather there?")
Message5=Message.create(group_id:group2.id, content: "Let's go scuba diving!")