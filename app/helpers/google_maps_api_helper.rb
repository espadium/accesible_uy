module GoogleMapsApiHelper
  def google_maps_api
    content_tag(:script,
                 type: 'text/javascript',
                 src: google_api_access) do
    end
  end

  def google_api_access
    "#{google_api_url}?key=#{ENV['GOOGLE_MAPS_API_KEY']}&sensor=false"
  end

  def google_api_url
    'http://maps.googleapis.com/maps/api/js'
  end
end
