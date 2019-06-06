# frozen_string_literal: true

class CheckRules
  def self.params_not_allowed?(params, allowed_params)
    difference = params.keys.difference(allowed_params)
    pp difference
    difference.count.positive?
  end
end