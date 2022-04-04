class AnimalSerializer
  include JSONAPI::Serializer
  set_id 'id'
  set_type 'animal'

  def self.format_animal(animal, photo)
    {
      'attributes': {
        'common_name': animal.common_name,
        'scientific_name': animal.scientific_name,
        'kingdom': animal.kingdom,
        'phylum': animal.phylum,
        'taxclass': animal.taxclass,
        'taxorder': animal.taxorder,
        'family': animal.family,
        'genus': animal.genus,
        'region': {
          'statesTerritories': animal.states
        },
        'vulnerability': {
          'gRank': 'g1',
          'gRankReasons': 'Critically Imperiled'
        },
        'habitats': animal.habitats,
        'habitatComments': animal.habitat_comments,
        'threatImpactComments': animal.threat_impact_comments,
        'shortTermTrend': animal.short_term_trend,
        'popSize': animal.pop_size,
        'imageUrl': photo.photo_url,
        'hostUrl': photo.host_url
      }
    }
  end
end
