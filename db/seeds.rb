# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')




# we 





growth hacking = Product.create(title: "Offer 1 Botox", subtitle: "30% Off Your First Treatment", roxcy_points: "30", price: "180", sku: "BOTOX", download_url: "www.square.com", 
 details: "Free Consultation", description: %{<p>Claim your 30% off your first anti aging treatment at Belize Beauty and get treated by some of Berkshires finest professional service .</p>
 
 <ul class="no-indent">
 <li>What Beauty Belize ?</li>
 <li>Own The Night With Style</li>
 <li>Top Professionals</li>
 <li>On Demand Service</li>
 </ul>}) 

Offer BotoxParty = Product.create(title: "Offer 2 Botox Party", 
 subtitle: "Botox Party", author: "Belize Berkshire", 
 roxcy_points: "80", price: "480", sku: "BOPABBOF2", download_url: "http://www.square.com", 
 details: "A Botox Party For 4 Of Your Friends", description: %{<p>Botox Parties are great and cool new hip way to enjoy the pain with some pleasure. You can book at a time that suits you. We are On demand On android,ios and taking payments through sisco livescope</p>


<ul class="no-indent">
 <li>Proffesional Consultation</li>
 <li>Join a Loyalty system that actually works for beauticians</li>
 <li>Get new Client Needs</li>
 <li>Alll the resources small buisnesses need on anm android phone/li>
 </ul>})
 

# we are storing products as a seed over migration and models. 
# I am not sure as to why ? We are opting to usde seeds and 
# migrating it to the database as we are providing more features than a 
# simple recall for example; we are not providing a location or a price 
# we are providing a product which comes with extra features(price,size,weight)
# See below
# request(for location) D.B send country name (germany)
# request (for member) D.B send user name (Wlad Martinez)
# HOWEVER
# request (for product/service) D.B send product and links along product features(product code,product size)
 