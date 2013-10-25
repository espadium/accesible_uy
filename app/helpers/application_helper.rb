module ApplicationHelper

  def build_outside_url(url)
    url = 'http://' + url unless url.starts_with? 'http://'
    url
  end
end
