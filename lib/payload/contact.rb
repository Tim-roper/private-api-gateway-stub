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
  end
end