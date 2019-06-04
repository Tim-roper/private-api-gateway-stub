require_relative 'payload/contact'

module Payloads
  # include Contact

  def self.business_get
    [
      {
        "BusinessName": 'Blah Blah Pty Ltd',
        "Id": '4d0429b1-c5c1-4b90-803d-03d3124fc216',
        "SerialNumber": '612343892983',
        "RegionCode": 61,
        "ProductCode": 30,
        "UserRole": 1
      },
      {
        "BusinessName": "Jim's Mowing Pty Ltd",
        "Id": '3ca65258-1dc7-4631-a01e-3b3c9887a3b2',
        "SerialNumber": '643339889238',
        "RegionCode": 64,
        "ProductCode": 40,
        "UserRole": 2
      },
      {
        "BusinessName": 'Blah Blah Pty Ltd',
        "Id": 'f78d1c27-f08e-4eec-9c15-16717402a9dd',
        "SerialNumber": '618938298372',
        "RegionCode": 61,
        "ProductCode": 20,
        "UserRole": 2
      }
    ]
  end

  def self.business_detail_get
    {
      "Region": 'AU',
      "ABNOrTFN": '80 000 000 001',
      "ABNBranch": '123',
      "Address": "25 Spring Street\r\nBlackburn\r\nVIC, 3130",
      "BusinessName": 'Clearwater Pty Ltd',
      "ACN": '123 123 123',
      "Email": 'info@clearwater.com.au',
      "Fax": '03 9555 7886',
      "PayeeNumber": '',
      "Phone": '03 9555 4567',
      "TaxNumber": '2',
      "ConversionDate": '2014-07-01T00:00:00',
      "CurrentFinancialYear": 2019,
      "LastFinancialMonth": 6,
      "AccountingPeriods": 13,
      "SerialNumber": '000000000000'
    }
  end

  def self.journal_list_get
    [
      {
        "BusinessEventId": 401,
        "BusinessEventType": 'CashPayment',
        "DateOccurred": '2018-12-03T00:00:00',
        "DisplayId": '135',
        "Memo": 'James Cameron',
        "SourceJournal": 'CashPayment',
        "Amount": 3300
      }
    ]
  end

  def self.bill_list_get
    {
      "Bills": [
        {
          "Id": 378,
          "BalanceDue": 133,
          "SupplierName": 'Mountain Spring',
          "SupplierInvoiceNumber": 'Order1',
          "DateOccurred": '2018-12-03T00:00:00',
          "DateClosed": '2018-03-27T00:00:00',
          "DisplayId": '00000005',
          "Status": 'Open',
          "Amount": 249
        }
      ],
      "TotalAmount": 710.5,
      "TotalBalanceDue": 640.2
    }
  end

end
