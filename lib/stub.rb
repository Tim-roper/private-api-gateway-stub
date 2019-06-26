# frozen_string_literal: true

require 'sinatra'
require_relative 'payloads'
require_relative 'check_rules'

class Stub < Sinatra::Base
  include Payloads

  get '/' do
    'Hello world!'
  end

  get '/businesses' do
    content_type :json
    Payloads::Business.business_get.to_json
  end

  get '/businesses/:businessId' do
    content_type :json
    Payloads::Business.business_detail_get.to_json
  end

  get '/businesses/:businessId/journal' do
    content_type :json
    Payloads::Business.journal_list_get.to_json
  end

  get '/businesses/:businessId/bills' do
    content_type :json
    Payloads::Bill.bill_list_get.to_json
  end

  get '/businesses/:businessId/contacts' do
    pp params
    allowed_params = %w[businessId keywords sortOrder orderBy type showInactive]
    status 400 if CheckRules.params_not_allowed?(params, allowed_params)
    content_type :json
    Payloads::Contact.contact_list_get.to_json
  end

  get '/businesses/:businessId/contacts/:contactId' do
    content_type :json
    Payloads::Contact.contact_detail.to_json
  end

  get '/businesses/:businessId/sale-returns' do
    pp params
    content_type :json
    Payloads::CustomerReturn.customer_return_list_get.to_json
  end

  get '/businesses/:businessId/superannuation-funds' do
    pp params
    allowed_params = %w[businessId keywords sortOrder orderBy]
    status 400 if CheckRules.params_not_allowed?(params, allowed_params)
    content_type :json
    SuperannuationFunds.super_funds_list_get.to_json
  end

  get '/businesses/:businessId/sale-returns/:invoiceId' do
    pp params
    content_type :json
    Payloads::CustomerReturn.sale_return_read.to_json
  end

  get '/businesses/:businessId/display-ids/:resourceName' do
    pp params
    content_type :json
    {"DisplayId": "GJ000009"}.to_json
  end

  get '/businesses/:businessId/accounts' do
    pp params
    content_type :json
    Payloads::Account.accounts_list.to_json
  end

  get '/businesses/:businessId/accounts/:accountId' do
    content_type :json
    Payloads::Account.account_detail.to_json
  end

  get '/businesses/:businessId/pay-refunds/:refundId' do
    content_type :json
    Payloads::PayRefund.pay_refund_detail.to_json
  end

  delete '/businesses/:businessId/pay-refunds/:refundId' do
    status 200
  end

  post '/businesses/:businessId/pay-refunds' do
    status 200
  end

  get '/test' do
    status 200
  end
end
