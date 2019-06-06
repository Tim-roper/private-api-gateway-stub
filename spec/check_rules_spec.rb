# frozen_string_literal: true

require_relative '../lib/check_rules'

RSpec.describe 'Check rules' do
  describe 'all_params_allowed?' do
    it 'returns true when all parameters are allowed' do
      allowed_params = [:foo, :bar, :baz]
      actual_params = {foo: 'bar', bar: 'baz'}
      expect(CheckRules.params_not_allowed?(actual_params, allowed_params)).to be false
    end
    it 'returns false when a non-allowed parameter is included' do
      allowed_params = [:foo, :bar, :baz]
      actual_params = {foo: 'bar', bar: 'baz', invalid: 'invalid'}
      expect(CheckRules.params_not_allowed?(actual_params, allowed_params)).to be true
    end
  end
end
