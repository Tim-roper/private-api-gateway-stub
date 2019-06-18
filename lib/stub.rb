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

  get '/test' do
    status 200
  end
end
