# frozen_string_literal: true
require "rest-client"
require_relative "apis/version"

module Apis
  class Responses
  	def self.awesome?
      puts "Hello world!!!!!!!!!!"
      response = RestClient.post 'https://api.nowcerts.com/api/token', {grant_type:'password', username:'api@api.api', password:'123456Qw', client_id:'ngAuthApp'}, {content_type: 'text/plain'}
      puts "#{response}"
    end
  end
end
