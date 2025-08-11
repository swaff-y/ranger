# frozen_string_literal: true

require 'json'

def process(event:, context:)
  resource = event['resource']
  http_method = event['httpMethod']
  headers = event['headers'] || {}
  body = event['body'] ? JSON.parse(event['body']) : {}

  { statusCode: 200, body: JSON.generate({ message: 'Success' }) }.tap do |response|
    response[:headers] = {
      'Content-Type' => 'application/json',
      'Access-Control-Allow-Origin' => '*',
      'Access-Control-Allow-Methods' => 'GET, POST, OPTIONS',
      'Access-Control-Allow-Headers' => 'Content-Type'
    }
  end
rescue StandardError => e
  { statusCode: 500, body: JSON.generate({ error: 'Internal Server Error', message: e.message }) }
end
