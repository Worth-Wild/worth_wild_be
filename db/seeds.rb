User.destroy_all

brian = User.create(first_name: "Brian", last_name: "Peterson", username: "bpeterson", email: "b@peterson.com" )
User.create(first_name: "Devin", last_name: "Pile", username: "dpile", email: "d@pile.com" )
User.create(first_name: "Jessica", last_name: "Organ", username: "jorgan", email: "j@organ.com" )
User.create(first_name: "Joel", last_name: "Grant", username: "jgrant", email: "j@grant.com" )
User.create(first_name: "Josh", last_name: "Walsh", username: "jwalsh", email: "j@walsh.com" )
User.create(first_name: "Kai", last_name: "Kuller", username: "kkuller", email: "k@kuller.com" )
User.create(first_name: "Nik", last_name: "Seif", username: "nseif", email: "n@seif.com" )
User.create(first_name: "Susanna", last_name: "Carey", username: "scarey", email: "s@carey.com" )
User.create(first_name: "Wade", last_name: "Naughton", username: "wnaughton", email: "w@naughton.com" )
User.create(first_name: "Stephen", last_name: "Colbert", username: "scolbert", email: "s@colbert.com" )
# bear = Animal.create('common_name': 'american black bear',
# 'scientific_name': 'Ursus americanus',
# 'kingdom': 'Animalia',
# 'phylum': 'Craniata',
# 'taxclass': 'Mammalia',
# 'taxorder': 'Carnivora',
# 'family': 'Ursidae',
# 'genus': 'Ursus',
# 'biome': 'Terrestrial',
# 'states': ['Alaska', 'Oregon', 'Washington', 'Manitoba'],
# 'habitats': ['Woodland - Conifer', 'Woodland - Hardwood'],
# 'habitat_comments': 'Black bears inhabit forests and nearby openings, including forested wetlands.',
# 'threat_impact_comments': 'Locally threatened by habitat loss and interference by humans.',
# 'short_term_trend': 'Populations have increased recently in the northeastern U.S.',
# 'pop_size': '10,000 to >1,000,000 individuals',
# 'image': 'https://tse1.mm.bing.net/th?id=OIP.EozSp55ljvd5v2-qI3vdlAHaFp&pid=Api')
# UserAnimal.create(user_id: brian.id, animal_id: bear.id)
