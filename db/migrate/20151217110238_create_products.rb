class CreateProducts < ActiveRecord::Migration
 def change
   create_table :products do |t|
     t.string :title
     t.string :subtitle
     t.string :author
     t.text :description
     t.string :sku
     t.decimal :price
     t.timestamps
   end
 end
end


#######SEEDS.RB >>>>>>>>>>>>>>>>> MODAL(THIS FILE) >>>>>>>>>>> USER REQUEST
##################### RAKE:DB:MIGRATE(ESTABLISH CONNECTION)
##################### RAKE:DB:SEED(ESTABLISH CONNECTION)
 #              -WHY ? we are not connecting to a gem or basic 
 #             ruby function but custom data as set out in seed.rb. 
 #              purchase came from stripe
 #              uuid came from ruby language
 #              admin came from active admin 