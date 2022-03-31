class AnimalFacade
  def self.get_animal(search_animal)
    search_results_data = AnimalService.get_animal_info(search_animal)
    AnimalInfo.new(search_results_data)
  end
end
