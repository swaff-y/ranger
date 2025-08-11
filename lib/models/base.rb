# frozen_string_literal: true

require_relative '../config'
require_relative '../exceptions/exceptions'
require_relative '../validation/schema_validation'

module Models
  # base model class
  class Base
    def initialize(event, context)
      @event = event
      @context = context
    end
  end
end
