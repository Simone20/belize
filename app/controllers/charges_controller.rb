class ChargesController < ApplicationController

									def create
						  # Amount in cents
						  @amount = 18000

						  customer = Stripe::Customer.create(
						    :email => params[:stripeEmail],
						    :source  => params[:stripeToken]
						  )

						 

						  charge = Stripe::Charge.create(
						    :customer    => customer.id,
						    :amount      => params[:amount],
						    :description => 'Belize Beauty',
						    :currency    => 'gbp'
						  )

						 
						   purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], 
    amount: params[:amount], description: charge.description, currency: charge.currency,
    customer_id: customer.id, product_id: 1, uuid: SecureRandom.uuid)

redirect_to purchase


						
						rescue Stripe::CardError => e
						  flash[:error] = e.message
						  redirect_to new_charge_path
						end


end

 ## Check and confirm with Stripe the following information

  #NOTE:# Once Purchase has been reccieved and checked take data and throw it into the the database
						  #NOTE:# The placement of this information into the database equals the creation of an order!!

						  # Once information is all checked put this information into a local database 
						  #to be used for data analysis later
####### IN CASE OF ERROR RUN THE FOLLOWINg
						########## WE ARE RUNNING A STRIPE FUNCTION SO THIS IS A STRIPE DEFAULT!