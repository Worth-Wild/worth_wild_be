class AnimalOfTheDaySerializer

def self.format_animal(animal_of_the_day)
  {
  "data":
   {

    "type": "animal_of_the_day",
    "attributes":
      {
        "common_name": animal_of_the_day.common_name,
        "scientific_name": animal_of_the_day.scientific_name,
        "element_code": animal_of_the_day.element_code,
        "imageUrl": animal_of_the_day.image,
      }
    }
  }
  end
end
