class PhotoFacade
  def self.animal_photo(search_term)
    photo_data = PhotoService.get_animal_photo(search_term)
    Photo.new(photo_data[:data][:attributes])
  end
end
