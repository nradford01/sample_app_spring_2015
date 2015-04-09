class Ipinfo
  include HTTParty
  base_uri 'ipinfo.io'

  def get_info(format=nil)
    @last_request ||= self.class.get("/json")
  end

  def get_coordinates()
    response = JSON.parse(self.get_info().body)
    response['loc'].split(',')
  end

  def get_city()
    response = JSON.parse(self.get_info().body)
    response['city']
  end

end