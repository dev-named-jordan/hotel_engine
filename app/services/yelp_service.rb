class YelpService
  def self.conn
    conn = Faraday.new(url: 'https://api.yelp.com')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_burritos(location, term)
    response = conn.get("/v3/businesses/search") do |f|
      f.params['location'] = "denver"
      f.params['term'] = "california burrito"
      f.headers['Authorization'] = ENV['Authorization']
    end
    parse(response)
  end
end
