module Payloads
  module Account
    def self.accounts_list
      [
        {
          "Id": 0,
          "AccountNumber": 0,
          "AccountName": "string",
          "AccountDescription": "string",
          "AccountSubType": "Unknown",
          "AccountType": "Unknown",
          "IsCredit": true,
          "IsProfitAndLossAccount": true,
          "IsBalanceSheetAccount": true,
          "DisplayInLocalCurrency": true,
          "IsHeader": true,
          "IsVisible": true,
          "IsSystem": true,
          "IsImmutable": true,
          "IsPostable": true,
          "OpeningBalanceForeign": 0,
          "Level": 0,
          "IsPaymentAccount": true,
          "TaxCodeId": 0,
          "ForeignCurrencyId": 0,
          "ParentAccountId": 0,
          "LastReconcileDate": "2019-01-01T23:22:01",
          "CurrentBalance": 1736.23,
          "IsLinked": true,
          "DisplayId": "1-0001",
          "IsAllowedToMoveUp": true,
          "IsAllowedToMoveDown": true
        }
      ]
    end

    def self.account_detail
      {
        "Id": 1,
        "CurrentBalance": "20.000",
        "AccountDescription": "Test Bank Account desc",
        "AccountName": "Test Bank Account",
        "AccountNumber": 3456,
        "AccountType": "Asset",
        "SubAccountType": "Bank",
        "IsSystem": false,
        "ClassificationForStatementOfCashFlow": "Operating",
        "IsHeader": true,
        "IsVisible": true,
        "OpeningBalance": 20.04,
        "TaxCodeId": 8,
        "ReportSubtotal": false,
        "BankingDetails": {
          "BankingDetailsId": 72,
          "BankCode": "COM",
          "AccountNumberAU": "123 456 7",
          "AccountName": "TIM",
          "AccountNumberNZ": "02-0112-0107400-00",
          "BankNumber": "123-456",
          "StatementParticulars": "POOP",
          "StatementCode": "123",
          "StatementReference": "TIM REF",
          "CompanyTradingName": "TIM COMPANY",
          "CreateBankFile": true,
          "DirectEntryUserId": 123456,
          "IncludeSelfBalancingTransaction": true
        }
      }
    end
  end
end
