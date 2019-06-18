require_relative 'payload/contact'
require_relative 'payload/customer_return'
require_relative 'payload/business'
require_relative 'payload/bill'
require_relative 'payload/superannuation_funds'

module Payloads 
	include SuperannuationFunds
end

