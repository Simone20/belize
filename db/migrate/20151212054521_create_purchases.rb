class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
     t.string :email
     t.integer :amount
     t.string :description
     t.string :currency
     t.string :customer_id
     t.string :card
     t.integer :product_id
     t.timestamps
    end
  end
end

# Creation of a server to store purchaes made on the site. We are labelling information that we need to store
#This will ensure that this information can be used for data analysis. Think salesforce IBM and HP ENTERPRISE