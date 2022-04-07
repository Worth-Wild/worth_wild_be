<details close="close">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a Getting Started</a>
      <ul>
        <li><a href="#local-setup">Set Up</a></li>
        <li><a href="#gems">Gems</a></li>
        <li><a href="#references">References</a></li>
      </ul>
    </li>
     <li>
      <a href="#api-endpoints">API endpoints</a>
    </li>
    <li>
      <a href="#overview">Overview</a>
      <details>
        <summary>details</summary>
        <ul>
          <li><a href="#learning-goals-achieved">Learning Goals Achieved</a></li>
          <li><a href="#framework">Framework</a></li>
          <li><a href="#tools">Tools</a></li>
          <li><a href="#development-principles">Development Principles</a></li>
          <li><a href="#contributors">Contributors</a></li>
        </ul>
      </details>
    </li>
  </ol>
</details>

# <div align="center">![W (2)](https://user-images.githubusercontent.com/87088092/160305910-862472ba-9574-420f-aa8b-d2e99e6c37ff.png)
</div>


#### <div align="center">The Application that Supports a Cause Worthwhile</div>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Local Setup</div>

#### Steps to follow: 

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`

Then, run the test suite...

4. In your terminal, run `bundle exec rspec` to test for global coverage


### Gems:

<p>
  <img src="https://img.shields.io/badge/rspec--rails-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />   
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

*Resource links:*
[rspec-rails](https://github.com/rspec/rspec-rails) | [pry](https://github.com/pry/pry) | [simplecov](https://github.com/simplecov-ruby/simplecov) | [figaro](https://medium.com/@MinimalGhost/the-figaro-gem-an-easier-way-to-securely-configure-rails-applications-c6f963b7e993) | [faraday](https://github.com/lostisland/faraday)

### References

#####  Data coming from [Animal Microservice Repo](https://github.com/Worth-Wild/worth_wild_animal_api) and [Photo Microservice Repo](https://github.com/Worth-Wild/worth_wild_photo_api)
Links to reference: [Capstone Project](https://mod4.turing.edu/projects/capstone/) and [Front-End Repo](https://github.com/Worth-Wild/worth_wild_fe)



![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">API endpoints</div>

<details close="close">
  <summary>Animal endpoint</summary>
  
  ```
  https://secure-island-06435.herokuapp.com/api/v1/animal?common_name=Cheat Mountain Salamander&element_code=AAAAD12120
  ```
  
  ```
  {
    "id": 1,
    "search_animal_id": null,
    "common_name": "Cheat Mountain Salamander",
    "scientific_name": "Plethodon nettingi",
    "kingdom": "Animalia",
    "phylum": "Craniata",
    "taxclass": "Amphibia",
    "taxorder": "Caudata",
    "family": "Plethodontidae",
    "genus": "Plethodon",
    "biome": null,
    "states": "[\"West Virginia\"]",
    "habitats": null,
    "habitat_comments": "Primarily in red spruce-yellow birch or spruce-dominated forests; occasionally collected in mixed deciduous hardwoods (Brooks 1945, 1948; Clovis 1979; Green and Pauley 1987). Bryophytes and downed logs are usually common. Occurs under rocks and in or under logs during day; sometimes among wet leaves. Active on forest floor at night; may climb lower portions of tree trunks (Brooks 1945, 1948; Green and Pauley 1987). Eggs have been found in and under rotting logs, and under rocks (Brooks 1948, Green and Pauley 1987).",
    "threat_impact_comments": "Populations have been fragmented by habitat modifications such as timbering, burning, mining, recreational development, and road construction. Scientists have speculated that habitat alterations may favor the encroachment of mountain dusky and redback salamanders, which may subsequently out-compete the Cheat Mountain salamander for food and microhabitat. With continued discretion in the management of high-elevation spruce and associated hardwood forests, the future of the Cheat Mountain salamander looks sound. However, long-term habitat changes resulting from acid precipitation and climate change may alter this outlook (West Virginia Division of Natural Resources web site 1998, U.S. Fish and Wildlife Service 2017).",
    "short_term_trend": "Two studies (reviewed by U.S. Fish and Wildlife Service 2017) across 32 and 35 years indicate that many populations of this species have declined since the 1970's, extending well into the 2000's. Principal factors include interspecific competition and the destruction, modification, and fragmentation of habitats.",
    "pop_size": "2500 - 100,000 individuals",
    "image": "https://tse1.mm.bing.net/th?id=OIP.kwFkPEcYFHD6wgkjUgN-qQHaE8&pid=Api",
    "created_at": "2022-04-06T23:53:58.043Z",
    "updated_at": "2022-04-06T23:53:58.043Z",
    "host_url": "https://www.amphibianfact.com/cheat-mountain-salamander.asp"
}
  ```
  
</details>

<details close="close">
  <summary>Search Animal endpoint</summary>
  
  ```
  https://secure-island-06435.herokuapp.com/api/v1/search_animal?search=Alabama Sturgeon
  ```
  ```
  {
    "data": [
        {
            "id": 176,
            "type": "search_animal",
            "attributes": {
                "common_name": "Alabama Sturgeon",
                "element_code": "AFCAA02030",
                "scientific_name": "Scaphirhynchus suttkusi"
            }
        }
    ]
}
  ```
  
</details>

<details close="close">
  <summary>Animal of the Day endpoint</summary>
  
  ```
  https://secure-island-06435.herokuapp.com/api/v1/animal_of_the_day
  ```
  
  ```
  {
    "data": {
        "type": "animal_of_the_day",
        "attributes": {
            "common_name": "a mayfly",
            "scientific_name": "Ameletus imbellis",
            "element_code": "IIEPH15160",
            "imageUrl": "https://tse4.mm.bing.net/th?id=OIP.nPTG5MB6C6viUFIoaQpXYwHaFj&pid=Api"
        }
    }
}
  ```
  
</details>

<details close="close">
  <summary>User endpoint</summary>
  
  POST
  
  ```
  https://secure-island-06435.herokuapp.com/api/v1/users
  ```
  
  Body
  ```
  {
    "username": "test",
    "email": "test@test.com",
    "first_name": "test",
    "last_name": "test"
}
  ```
  
  Output
  
  ```
  {
    "data": {
        "id": "11",
        "type": "user",
        "attributes": {
            "first_name": "test",
            "last_name": "test",
            "username": "test",
            "email": "test@test.com",
            "animals": []
        }
    }
}
  ```
  
  GET
  
  ```
  https://secure-island-06435.herokuapp.com/api/v1/dashboard
  ```
  
  Body
  
  ```
  {
    "username": "test"
  }
  ```
  
  Output
  
  ```
  {
    "data": {
        "id": "11",
        "type": "user",
        "attributes": {
            "first_name": "test",
            "last_name": "test",
            "username": "test",
            "email": "test@test.com",
            "animals": []
        }
    }
}
  ```
  
</details>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## <div align="center">Overview</div>

Worth Wild BE Repository consumes data from multiple microservices to expose the Worth Wild API for the front-end application to consume.


####  Learning Goals Achieved

* Expose an API that aggregates data from multiple external microservices
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
* Communicate with FE team to meet deadlines
* Research, select, and consume an API based on your needs as a developer


#### Framework:
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages:
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Tools:
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
</p>

#### Development Principles:
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>

#### Contributors:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
     <!-- Brian -->
<!--     <td align="center"><a href="https://github.com/bpeterson2579"><img src="https://avatars.githubusercontent.com/u/83668309?v=4" width="100px;" alt=""/><br /><sub><b>Brian (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=bpeterson2579" title="Code">💻</a> <a href="#ideas-bpeterson2579" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=bpeterson2579" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajbpeterson2579" title="Reviewed Pull Requests">👀</a></td> -->
     <!-- Devin -->
  <td align="center"><a href="https://github.com/devin-p-lay"><img src="https://avatars.githubusercontent.com/u/87088092?v=4" width="100px;" alt=""/><br /><sub><b>Devin (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Code">💻</a> <a href="#ideas-devin-p-lay" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajdevin-p-lay" title="Reviewed Pull Requests">👀</a></td>
    <!-- Jessica -->
<!--     <td align="center"><a href="https://github.com/Jorgan612"><img src="https://user-images.githubusercontent.com/87088092/160305666-d398c367-fbad-4e03-9a43-51813f7960ce.png" width="100px;" alt=""/><br /><sub><b>Jessica (she/her)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Jorgan612" title="Code">💻</a> <a href="#ideas-Jorgan612" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Jorgan612" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3AjJorgan612" title="Reviewed Pull Requests">👀</a></td> -->
    <!-- Joel -->
    <td align="center"><a href="https://github.com/joel-grant"><img src="https://user-images.githubusercontent.com/87088092/160305603-470088bb-0c16-4a04-8e4b-b73adc74cfbb.png" width="100px;" alt=""/><br /><sub><b>Joel (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=joel-grant" title="Code">💻</a> <a href="#ideas-joel-grant" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=joel-grant" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajoel-grant" title="Reviewed Pull Requests">👀</a></td>
    <!-- Josh -->
     <td align="center"><a href="https://github.com/jaw772"><img src="https://avatars.githubusercontent.com/u/87674632?v=4" width="100px;" alt=""/><br /><sub><b>Josh (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=jaw772" title="Code">💻</a> <a href="#ideas-jaw772" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=jaw772" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajaw772" title="Reviewed Pull Requests">👀</a></td>
    <!-- Kai -->
<!--      <td align="center"><a href="https://github.com/kavakai"><img src="https://avatars.githubusercontent.com/u/87667120?v=4" width="100px;" alt=""/><br /><sub><b>Kai (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=kavakai" title="Code">💻</a> <a href="#ideas-kavakai" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=kavakai" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajkavakai" title="Reviewed Pull Requests">👀</a></td> -->
    <!-- Susanna -->
<!--   <td align="center"><a href="https://github.com/susannaopal"><img src="https://avatars.githubusercontent.com/u/83846677?v=4" width="100px;" alt=""/><br /><sub><b>Susanna (she/her)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=susannaopal" title="Code">💻</a> <a href="#ideas-susannaopal" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=susannaopal" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajsusannaopal" title="Reviewed Pull Requests">👀</a></td> -->
     <!-- Wade -->
  <td align="center"><a href="https://github.com/WadeNaughton"><img src="https://avatars.githubusercontent.com/u/90228086?v=4" width="100px;" alt=""/><br /><sub><b>Wade (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=WadeNaughton" title="Code">💻</a> <a href="#ideas-WadeNaughton" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=WadeNaughton" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3AjWadeNaughton" title="Reviewed Pull Requests">👀</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
