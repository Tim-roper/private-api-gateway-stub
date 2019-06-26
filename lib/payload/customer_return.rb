module Payloads
  module CustomerReturn
    def self.customer_return_list_get
      {
        "SaleReturns": [
          {
            "Id": 2,
            "DisplayId": "00000028",
            "CustomerName": "Jon Terry",
            "PurchaseOrderReference": "PO0001",
            "DateOccurred": "2019-02-28T00:00:00",
            "BalanceDue": -9.9,
            "Amount": 360.5
          }
        ],
        "TotalBalanceDue": -9.9,
        "TotalAmount": 360.5
      }
    end

    def self.sale_return_read
     {
      "Id": 1,
      "CustomerId": 1,
      "Address": "Island Way Motel 22 Campbell Way Hornsby  NSW  2034",
      "Amount": -52.5
     } 
    end
  end
end
