class AnimalSerializer
  include JSONAPI::Serializer
  set_id 'id'
  set_type 'animal'
  def self.format_animal(animal_data, photo)

    {
      'attributes': {
        'common_name': animal_data.common_name,
        'scientific_name': animal_data.scientific_name,
        'kingdom': animal_data.kingdom,
        'phylum': animal_data.phylum,
        'taxclass': animal_data.taxclass,
        'taxorder': animal_data.taxorder,
        'family': animal_data.family,
        'genus': animal_data.genus,
        'region': {
          'statesTerritories': animal_data.states
        },
        'vulnerability': {
          'gRank': 'g1',
          'gRankReasons': 'Critically Imperiled'
        },
        'habitats': animal_data.habitats,
        'habitatComments': animal_data.habitat_comments,
        'threatImpactComments': animal_data.threat_impact_comments,
        'shortTermTrend': animal_data.short_term_trend,
        'popSize': animal_data.pop_size,
        'imageUrl': photo.photo_url,
        'hostUrl': photo.host_url
      }
    }
  end
end
