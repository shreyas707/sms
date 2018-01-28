class Sm < ActiveRecord::Base

	after_create :send_sms

	def send_sms
		HTTParty.get("https://control.msg91.com/api/sendhttp.php?authkey=YOUR_AUTH_KEY&mobiles=#{self.number}&message=#{self.message}&sender=DCTMSG&route=4&country=91&flash=Hi")
	end 

end