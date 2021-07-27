module Nowcerts
  def self.customers_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.agent_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.claim_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.driver_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.policy_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.vehicle_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end

  def self.policy_detail_list(method_type, url, header, resp)
    Apis::Responses.request(method_type, url, header, resp)
  end
end
