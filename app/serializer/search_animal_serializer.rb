class SearchAnimalSerializer

   def self.new(animal_result)
     {
     "data": animal_result.map do |result| {
       "id": result.id,
       "type": "search_animal",
       "attributes":
         {
           "common_name": result.common_name,
           "element_code": result.element_code,
           "scientific_name": result.scientific_name
         }
       }
      end
     }
   end
end
