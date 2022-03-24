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
4. Get API key from [RedList](https://api.redlist.au.dk/docs)
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
