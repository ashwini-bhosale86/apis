# require 'apis'

# module Apis
module Nowcerts
  def self.agency_apis()
  end

  def self.customers_data
  end

  def self.policies_list(resp)
  	# (method_type, url, resp)
  	# p "#{resp}"
  	# RestClient.request('get', 'https://api.nowcerts.com/api/PolicyDetailList()?$count=true&$orderby=FirstName asc&$skip=0&$top=10', {count:'true', orderby:'FirstName asc', skip:'0', top:'10'}, "Bearer #{resp['access_token']}")
  	RestClient::Request.execute(method: 'get', url: 'https://api.nowcerts.com/api/PolicyDetailList()?$count=true&$orderby=FirstName asc&$skip=0&$top=10', payload: {count:'true', orderby:'FirstName asc', skip:'0', top:'10'}, headers: {content_type: 'text/plain', authorization: "Bearer #{resp['access_token']}"})
  end
end
# end