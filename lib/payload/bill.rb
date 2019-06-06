module Payloads
  module Bill
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
end
