# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Destination.delete_all
Touristsite.delete_all
Group.delete_all
Member.delete_all
User.delete_all
Visit.delete_all
Message.delete_all

# Create the Destination
puts "Creating destinations..."
Santiago=Destination.create(country: "Chile", city: "Santiago")
Galapagos=Destination.create(country: "Ecuador", city: "Galapagos")
Beijing=Destination.create(country: "China", city: "Beijing")
Paris=Destination.create(country: "France", city: "Paris")
Berlin=Destination.create(country: "Germany", city: "Berlin")

# Create the touristsite
puts "Creating touristsite..."
Santiago_zoo=Touristsite.create(name: "Santiago_zoo")
Darwin_station=Touristsite.create(name: "Darwin_station")
Great_wall=Touristsite.create(name: "Great_wall")
Louvre_museum=Touristsite.create(name: "Louvre_museum")
Berlin_wall=Touristsite.create(name: "Berlin_wall")

# Create the groups
puts "Creating groups..."
group1=Group.create(name: "Southamerican")
group2=Group.create(name: "East Asia")
group3=Group.create(name: "Southeast Asia")
group4=Group.create(name: "West Europe")
group5=Group.create(name: "East Europe")

# Create the users
puts "Creating users..."
Alice=User.create(netid: "yhs456", name: "Alice Cui", graduation: "2015", section: "hedgehog" )
Alex=User.create(netid: "sxty736", name: "Alex Bourdeau", graduation: "2015", section: "hedgehog")
Geof=User.create(netid: "gry325", name: "Geof Alexander", graduation: "2016", section: "roadrunner" )
Vincent=User.create(netid: "vsu419", name: "Vincent Chang", graduation: "2015", section: "hedgehog" )
Yajur=User.create(netid: "yirr43", name: "Yajur Kappor", graduation: "2015", section: "roadrunner" )

# Create the members
puts "Creating members..."
member1=Member.create(group_id: group1.id, user_id: Alice.id, expense: 50.1)
member2=Member.create(group_id: group2.id, user_id: Alex.id, expense: 200.0)
member3=Member.create(group_id: group3.id, user_id: Geof.id, expense: 14.67)
member4=Member.create(group_id: group4.id, user_id: Vincent.id, expense: 36.54)
member5=Member.create(group_id: group5.id, user_id: Yajur.id, expense: 29.5)

# Create the visits
puts "Creating visits..."
Visit1=Visit.create(group_id: group1.id, destination_id: Santiago.id, touristsite_id: Santiago_zoo.id)
Visit2=Visit.create(group_id: group2.id, destination_id: Beijing.id, touristsite_id: Great_wall.id)
Visit3=Visit.create(group_id: group3.id, destination_id: Paris.id, touristsite_id: Louvre_museum.id)
Visit4=Visit.create(group_id: group4.id, destination_id: Berlin.id, touristsite_id: Berlin_wall.id)
Visit5=Visit.create(group_id: group5.id, destination_id: Galapagos.id, touristsite_id: Darwin_station.id)

# Create the message
puts "Creating messages..."
Message1=Message.create(group_id:group1.id, content: "I'm so excited!")
Message2=Message.create(group_id:group2.id, content: "Where are we meeting?")
Message3=Message.create(group_id:group3.id, content: "What should we bring?")
Message4=Message.create(group_id:group4.id, content: "Anyone knows about the weather there?")
Message5=Message.create(group_id:group5.id, content: "Let's go scuba diving!")