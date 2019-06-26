module Payloads
  module Contact
    def self.contact_list_get
      [
        {
          "ContactType": 'Customer',
          "BusinessName": 'A-Z Stationery Supplies',
          "CurrentBalance": 1736.231,
          "ContactName": 'Cameron, James',
          "IsIndividual": true,
          "IsActive": true,
          "Id": 1,
          "DisplayId": 'CUS000001',
          "LastName": 'Cameron',
          "FirstName": 'James',
          "Phone": '03 9546 2465',
          "Email": 'aa@gmail.com'
        }
      ]
    end
    
    def self.contact_detail
      {
	"DisplayId": "CUS00001",
	"ContactType": "Customer",
	"CompanyName": "Freshwater",
	"LastName": "Cruise",
	"FirstName": "Tom",
	"Abn": "53 086 760 303",
	"IsIndividual": true,
	"IsActive": true,
	"IsPaymentReportable": true,
	"Notes": "Some notes",
	"CurrentBalance": 1736.23,
	"AverageDaysToPay": 87,
	"Overdue": 1465.98,
	"Id": 377,
	"ShippingAddress": {
	  "City": "Cremorne",
	  "ContactName": "Mr. Secret",
	  "Country": "Australia",
	  "Email": "ta@myob.com;ta1@myob.com",
	  "Fax": "1231231234",
	  "PhoneNumbers": [
	    "22222222222",
	    "33333333333",
	    "44444444444"
	  ],
	  "Postcode": "3121",
	  "State": "VIC",
	  "Street": "167 Cremorne Street",
	  "Website": "www.ta.com",
	  "Salutation": "Mr"
	},
	"BillingAddress": {
	  "City": "Richmond",
	  "ContactName": "Brown",
	  "Country": "Australia",
	  "Email": "xa@myob.com;xa1@myob.com",
	  "Fax": "6666231234",
	  "Postcode": "3177",
	  "State": "NSW",
	  "Street": "1 Swan Street",
	  "Website": "www.xa.com",
	  "Salutation": "Mr",
	  "PhoneNumbers": [
	    "22222222222",
	    "33333333333",
	    "44444444444"
	  ]
	}
      }
    end
  end
end
