class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "One Month Commerce <commerce@belizebeauty.com>"

 def purchase_receipt purchase
 @purchase = purchase

 mail to: purchase.email, subject: "Thanks for your purchase!"

  end

end
# class PurchaseMailer < ActionMailer::Base
# layout 'purchase_mailer' 
# #CPU WILL LOOK FOR THIS LAYOUT IN LAYOUTS./ SO |IT MUST BE CREATED AND 
# #FUNCTION. THIS IS AN AQCTION

# #DEFAULTS FOR BACKEND ARE LABELED HERE. NOTE WE HAVE CALLED FUNCTION'S
# # WE ARE NOW WRITING THE BACKEND DEFAULTS. NOTE WE HAVE LABELED
# # WHERE THE LAYOUT EXISTS(LAYOUT- PURCHASE MAILER)
# # DEFAULT's FOR EMAIL(BELIUZE.COM,SUBJECT HEADER)

# default from: "Belize Beauty Payments Team <Admin@belize.com>"

# 	def purchase_recipt purchase
# 		@purchase = purchase
# 		mail to: purchase.email, subject: "Your Purchase With Belize Beauty"
# 	end


# end
