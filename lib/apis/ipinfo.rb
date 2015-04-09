class Ipinfo
  include HTTParty
  base_uri 'ipinfo.io'

  def get_info(format=nil)
    @last_request ||= self.class.get("/json")
    format.nil? ? @last_request : JSON.parse(@last_request.body)
  end

  def get_coordinates()
    response = self.get_info(:json)
    response['loc'].split(',')
  end

  def get_city()
    response = self.get_info(:json)
    response['city']
  end

end