class Ipinfo
  include HTTParty
  base_uri 'ipinfo.io'

  def self.get_info()
    self.get("/json")
  end

  def self.get_coordinates()
    response = JSON.parse(self.get_info().body)
    response['loc'].split(',')
  end

end