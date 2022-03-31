class AnimalFacade
  def self.get_animal(search)
    data = AnimalService.get_animal_info(search)
    AnimalInfo.new(data)
  end
end
