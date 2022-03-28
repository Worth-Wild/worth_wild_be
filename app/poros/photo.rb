class Photo
  attr_reader :id, :photo_url, :host_url
  def initialize(data)
    @id = nil
    @photo_url = data[:photo_url]
    @host_url = data[:host_url]
  end
end
