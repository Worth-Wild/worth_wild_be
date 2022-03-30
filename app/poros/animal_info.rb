class AnimalInfo
  attr_reader :common_name, :scientific_name, :kingdom, :phylum,
              :taxclass, :taxorder, :family, :genus, :biome, :states,
              :habitats, :habitat_comments, :threat_impact_comments, :short_term_trend,
              :pop_size
  def initialize(data)
    @common_name = data[:data][:attributes][:common_name]
    @scientific_name = data[:data][:attributes][:scientific_name]
    @kingdom = data[:data][:attributes][:kingdom]
    @phylum = data[:data][:attributes][:phylum]
    @taxclass = data[:data][:attributes][:taxclass]
    @taxorder = data[:data][:attributes][:taxorder]
    @family = data[:data][:attributes][:family]
    @genus = data[:data][:attributes][:genus]
    @states = data[:data][:region][:statesTerritories]
    @habitats = data[:data][:habitat_data][:habitats]
    @habitat_comments = data[:data][:habitat_data][:habitatComments]
    @threat_impact_comments = data[:data][:habitat_data][:threatImpactComments]
    @short_term_trend = data[:data][:habitat_data][:shortTermTrend]
    @pop_size = data[:data][:habitat_data][:popSize]
  end
end
