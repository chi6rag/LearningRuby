class CreditCard
	attr_accessor :owner_name, :card_number
	
	def initialize(owner_name, card_number)
		@owner_name = owner_name
		@card_number = card_number
	end

	def card_number
		"xxxx-xxxx-" + @card_number.split('-').last
	end

	def transact(amount)
		"#{owner_name} transacted " + amount.to_s + " from the credit card ending with " + card_number
	end

	def change_info(owner_name, card_number)
		@owner_name  = owner_name
		@card_number = card_number
	end
end

cc = CreditCard.new('Chirag', '1234-5678-9101')
puts("Card Number: " + cc.card_number)
puts(cc.transact(10000000))
puts "----------------------------------------"
cc.change_info('Ayushi', '9999-9999-9999')
puts("Card Number: " + cc.card_number)
puts(cc.transact(10000000))