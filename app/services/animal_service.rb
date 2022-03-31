class AnimalService

  def self.get_animal_info(search_term)
    conn = Faraday.new(url: "https://lit-retreat-15005.herokuapp.com") do |faraday|
      faraday.params["elCode"] = search_term
    end
    response = conn.get("/api/v1/animal/:id")
    JSON.parse(response.body, symbolize_names: true)
  end
end
