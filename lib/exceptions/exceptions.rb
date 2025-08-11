# frozen_string_literal: true

module Exceptions
  # Custom error class for handling application-specific exceptions
  class ApplicationError < StandardError
    def initialize(message = 'An error occurred in the application')
      super(message)
      Config.logger('error', message)
    end
  end
end
