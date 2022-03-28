require 'rails_helper'

RSpec.describe PhotoFacade do
  describe '::animal_photo' do
    it 'retrieves photo data from the photo service based on search term' do
      search_term = "Moose"
      photo_data = PhotoFacade.animal_photo(search_term)

      expect(photo_data).to be_a Photo
      expect(photo_data.host_url).to be_a String
      expect(photo_data.photo_url).to be_a String
    end

  end
end
