# frozen_string_literal: true

require 'sinatra'
require_relative 'payloads'

class Stub < Sinatra::Base
  include Payloads

  get '/' do
    'Hello world!'
  end

  get '/businesses' do
    content_type :json
    Payloads.business_get.to_json
  end

  get '/businesses/:businessId' do
    content_type :json
    Payloads.business_detail_get.to_json
  end

  get '/businesses/:businessId/journal' do
    content_type :json
    Payloads.journal_list_get.to_json
  end

  get '/businesses/:businessId/bills' do
    content_type :json
    Payloads.bill_list_get.to_json
  end

  get '/businesses/:businessId/contacts' do
    content_type :json
    Payloads::Contact.contact_list_get.to_json
  end
end
