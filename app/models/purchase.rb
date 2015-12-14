class Purchase < ActiveRecord::Base

	after_create :email_purchaser
		

		def to_param
		 uuid
		end
		



private

def email_purchaser
   PurchaseMailer.purchase_receipt(self).deliver
end




end



		# AS THE STORING OF INFOR~MATION IN LOCAL DB(STRIPE HAS CHECKED AND ~VALIDATED THAT THE CHARGE IS CORRECT)
		# WE WANT TO CREATE A FUNCTION AS SOON AS CHARGE IS CREATED 
		#  MAILURE FUNCTION BELOW UUID

# WE ARE CALLING A MAILER BUT DOES IT EXIST FOR CPU RECALL?
