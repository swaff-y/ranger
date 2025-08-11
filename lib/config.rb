# frozen_string_literal: true

# Application config
class Config
  def self.logger(level, message)
    puts "[#{level.upcase}] #{message}"
  end

  def self.stage
    ENV['STAGE'] || 'dev'
  end

  def self.database_name
    ENV['DATABASE_NAME'] || 'default_db'
  end

  def self.region
    ENV['AWS_REGION'] || 'us-east-1'
  end
end
