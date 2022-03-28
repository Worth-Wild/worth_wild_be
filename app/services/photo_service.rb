class PhotoService
  def self.get_animal_photo(search_term)
    conn = Faraday.new(url: "https://young-headland-02260.herokuapp.com") do |faraday|
      faraday.params["search"] = search_term
    end
    response = conn.get("/api/v1/photo")
    JSON.parse(response.body, symbolize_names: true)
  end
end
