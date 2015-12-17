# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')




# we 





growth_hacking = Product.create(title: "Growth Hacking",
subtitle: "Crash Course",
author: "Mattan Griffel",
price: "4.99",
sku: "GROHACK1",
description: %{<p>A growth hacker is a rare combination: someone with the right marketing and technical skills who can come up with clever marketing hacks and also track their results.</p>

        <p>In this talk, Mattan Griffel introduces you to the concept of Growth Hacking and shares his favorite tips for getting started as a growth hacker.</p>
        <p><strong>What You'll Learn</strong></p>
        <ul class="no-indent">
            <li>What is a growth hacker?</li>
            <li>The 5 stages of the user lifecycle</li>
            <li>How to apply the Lean Marketing Framework</li>
            <li>Resources and tools you'll need to know</li>
        </ul>}
)


Offer BotoxParty = Product.create(title: "Offer 2 Botox Party", 
 subtitle: "Botox Party", author: "Belize Berkshire", 
 roxcy_points: "80", price: "480", sku: "BOPABBOF2", download_url: "http://www.square.com", 
 details: "A Botox Party For 4 Of Your Friends", description: %{<p>Botox Parties are great and cool new hip way to enjoy the pain with some pleasure. You can book at a time that suits you. We are On demand On android,ios and taking payments through sisco livescope</p>


<ul class="no-indent">
 <li>Proffesional Consultation</li>
 <li>Join a Loyalty system that actually works for beauticians</li>
 <li>Get new Client Needs</li>
 <li>Alll the resources small buisnesses need on anm android phone/li>
 </ul>}

)
 
################   WHY I THINK WE USE SEED.RB
# we are storing products as a seed over migration and models. 
# I am not sure as to why ? We are opting to usde seeds and 
# migrating it to the database as we are providing more features than a 
# simple recall for example; we are not providing a location or a price 
# we are providing a product which comes with extra features(price,size,weight)
# See below
# request(for location) D.B send country name (germany)
# request (for member) D.B send user name (Wlad Martinez)
# HOWEVER
# request (for product/service) D.B(MODEL PRODUCT) send product and links along product features(product code,product size)
 