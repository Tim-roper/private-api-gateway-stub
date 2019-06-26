require_relative 'payload/contact'
require_relative 'payload/customer_return'
require_relative 'payload/business'
require_relative 'payload/bill'
require_relative 'payload/superannuation_funds'
require_relative 'payload/account'
require_relative 'payload/pay_refund'

module Payloads 
	include SuperannuationFunds
end

