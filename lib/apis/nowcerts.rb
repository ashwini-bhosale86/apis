# require 'apis'

# module Apis
module Nowcerts
  def self.agency_apis()
  end

  def self.customers_data
  end

  def self.policies_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end
end
# end