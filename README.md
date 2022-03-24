<details close="close">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#local-setup">Set Up</a></li>
        <li><a href="#gems">Gems</a></li>
      </ul>
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

# <div align="center">![Screen Shot 2022-03-23 at 8 42 43 AM](https://user-images.githubusercontent.com/87088092/159823129-0738025c-2b96-49fa-b276-0ba675a724a6.png)</div>


#### <div align="center">The Application that Supports a Cause Worthwhile</div>


![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)


## Local Setup:

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create}`
4. Get API key from [RedList](https://apiv3.iucnredlist.org/api/v3/token)
5. Run `figaro install` then enter API keys into your `application.yml` file 
```
wildlife_key: <enter your key here>
```

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

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## <div align="center">Overview</div>

Worth Wild BE Repository consumes an external API from [RedList](https://api.redlist.au.dk/docs) to expose the Worth Wild API for the front-end application to consume.


####  Learning Goals Achieved

* Expose an API that aggregates data from multiple external APIs
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
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
    <td align="center"><a href="https://github.com/arnaldoaparicio"><img src="https://avatars.githubusercontent.com/u/88012780?v=4" width="100px;" alt=""/><br /><sub><b>Arnaldo (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=arnaldoaparicio" title="Code">💻</a> <a href="#ideas-arnaldoaparicio" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=arnaldoaparicio" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajarnaldoaparicio" title="Reviewed Pull Requests">👀</a></td>
     <!-- Devin -->
  <td align="center"><a href="https://github.com/devin-p-lay"><img src="https://avatars.githubusercontent.com/u/87088092?v=4" width="100px;" alt=""/><br /><sub><b>Devin (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Code">💻</a> <a href="#ideas-devin-p-lay" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajdevin-p-lay" title="Reviewed Pull Requests">👀</a></td>
    <!-- Jessica -->
    <td align="center"><a href="https://github.com/echon006"><img src="https://avatars.githubusercontent.com/u/89038271?v=4" width="100px;" alt=""/><br /><sub><b>Eric (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=echon006" title="Code">💻</a> <a href="#ideas-echon006" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=echon006" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajechon006" title="Reviewed Pull Requests">👀</a></td>
    <!-- Joel -->
    <td align="center"><a href="https://github.com/Malllll12"><img src="https://user-images.githubusercontent.com/87088092/155652176-cb2263b4-550c-4a80-b38c-519308bd166f.png" width="100px;" alt=""/><br /><sub><b>Mallory (she/her)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Malllll12" title="Code">💻</a> <a href="#ideas-Malllll12" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Malllll12" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3AMalllll12" title="Reviewed Pull Requests">👀</a></td>
    <!-- Josh -->
     <td align="center"><a href="https://github.com/Sierra-T-9598"><img src="https://user-images.githubusercontent.com/87088092/155652453-38a801c4-1243-46ce-a42f-b8416cff0423.png" width="100px;" alt=""/><br /><sub><b>Sierra (she/her)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Sierra-T-9598" title="Code">💻</a> <a href="#ideas-Sierra-T-9598" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=Sierra-T-9598" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3ASierra-T-9598" title="Reviewed Pull Requests">👀</a></td>
    <!-- Kai -->
     <td align="center"><a href="https://github.com/jbreit88"><img src="https://avatars.githubusercontent.com/u/88853324?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Brad (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=jbreit88" title="Code">💻</a> <a href="#ideas-jbreit88" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=jbreit88" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajbreit88" title="Reviewed Pull Requests">👀</a></td>
    <!-- Susanna -->
  <td align="center"><a href="https://github.com/devin-p-lay"><img src="https://avatars.githubusercontent.com/u/87088092?v=4" width="100px;" alt=""/><br /><sub><b>Devin (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Code">💻</a> <a href="#ideas-devin-p-lay" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajdevin-p-lay" title="Reviewed Pull Requests">👀</a></td>
     <!-- Wade -->
  <td align="center"><a href="https://github.com/devin-p-lay"><img src="https://avatars.githubusercontent.com/u/87088092?v=4" width="100px;" alt=""/><br /><sub><b>Devin (he/him)</b></sub></a><br /><a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Code">💻</a> <a href="#ideas-devin-p-lay" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/Worth-Wild/worth_wild_be/commits?author=devin-p-lay" title="Tests">⚠️</a> <a href="https://github.com/Worth-Wild/worth_wild_be/pulls?q=is%3Apr+reviewed-by%3Ajdevin-p-lay" title="Reviewed Pull Requests">👀</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
