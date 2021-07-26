# frozen_string_literal: true
require "rest-client"
require_relative "apis/version"
require 'json'
require_relative 'apis/nowcerts'

module Apis
  class Responses
  	def self.awesome?
      response = RestClient.post 'https://api.nowcerts.com/api/token', {grant_type:'password', username:'api', password:'123456Qw', client_id:'ngAuthApp'}, {content_type: 'text/plain'}
    end

    def self.authorize(type, url, header)
      resp = request(type, url, header)
      response(resp)
      # @r
    end

    def self.request(type, url, header, authorization = nil)
      RestClient::Request.execute(method: type.to_sym, url: url, payload: header, headers: {content_type: 'text/plain', authorization: authorization})
    end

    def self.response(resp)
      response = JSON.parse(resp)
    end

    # def self.get_agency_list(type, url, header, access_token) 
    #   # Apis::Responses.request('get',
    #   # 'https://api.nowcerts.com/api/PolicyDetailList()?$count=true&$orderby=FirstName
    #   # asc&$skip=0&$top=10', {count:'true', orderby:'FirstName asc', skip:'0', top:'10'}, "Bearer
    #   # {resp['access_token']}") 

    #   RestClient::Request.execute(method: type.to_sym, url: url, payload:
    #   header, headers: {content_type: 'text/plain', authorization: "Bearer #{access_token}"})
    # end # resp =
      # RestClient::Request.execute(type.to_sym, url, params, "Bearer #{access_token}") response resp end
end end
