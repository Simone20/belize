class Purchase < ActiveRecord::Base
		
		# AS THE STORING OF INFOR~MATION IN LOCAL DB(STRIPE HAS CHECKED AND ~VALIDATED THAT THE CHARGE IS CORRECT)
		# WE WANT TO CREATE A FUNCTION AS SOON AS CHARGE IS CREATED 
		#  MAILURE FUNCTION BELOW UUID

		def to_param
		 uuid
		end
		

after_create :email_purchaser

private

def email_purchaser
   PurchaseMailer.purchase_receipt(self).deliver
end

# WE ARE CALLING A MAILER BUT DOES IT EXIST FOR CPU RECALL?


end
