module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def get_weather_widget()
    ipinfo = Ipinfo.new
    coordinates = ipinfo.get_coordinates()

    query = {
      lat: coordinates.first,
      lon: coordinates.last,
      name: ipinfo.get_city
    }.to_query
    
    tag('iframe', id:          "forecast_embed", 
                  type:        "text/html",
                  frameborder: "0",
                  height:      "245",
                  width:       "100%",
                  src:         "http://forecast.io/embed/##{query}")
  end
end
