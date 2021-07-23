# frozen_string_literal: true
require "rest-client"
require_relative "apis/version"
require 'json'

module Apis
  class Responses
  	def self.awesome?
      puts "Hello world!!!!!!!!!!!!!!!!!!!!!!"
      response = RestClient.post 'https://api.nowcerts.com/api/token', {grant_type:'password', username:'api', password:'123456Qw', client_id:'ngAuthApp'}, {content_type: 'text/plain'}
    end

    def self.authorize type, url, header
      resp = request(type, url, header)
    end

    def self.request(type, url, header, authorization = nil)
      resp = RestClient::Request.execute(method: type.to_sym, url: url, payload: header, headers: {content_type: 'text/plain', authorization: authorization})
      response resp
    end

    def self.response resp
      JSON.parse(resp)
    end
  end
end