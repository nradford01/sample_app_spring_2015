class Ipinfo
  include HTTParty
  base_uri 'ipinfo.io'

  def self.get_info()
    self.get("/json")
  end

end