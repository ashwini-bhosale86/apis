# frozen_string_literal: true
require "rest-client"
require_relative "apis/version"
require 'json'
require_relative 'apis/nowcerts'

module Apis
  class Responses
    def self.authorize(type, url, header)
      request(type, url, header)
    end

    def self.request(type, url, header, authorization = nil)
      resp = RestClient::Request.execute(method: type.to_sym, url: url, payload: header, headers: {content_type: 'text/plain', authorization: authorization})
      response(resp)
    end

    def self.response(resp)
      JSON.parse(resp)
    end
  end 
end
