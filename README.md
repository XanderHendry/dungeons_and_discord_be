# Dungeons & Discord (Back End) - Project README
# Back-End

Link to [](https://consultancy-fe-b49461b80f89.herokuapp.com/)<br>
Link to [DnD 5e API](https://5e-bits.github.io/docs/)<br>
Link to [Front End Service](https://github.com/aevans27/Dungeons-and-Discord-FE)

---

## Setup
- Ruby 3.2.2
- Rails 7.0.7.2
- [Faraday](https://github.com/lostisland/faraday) A gem to interact with APIs
- [SimpleCov](https://github.com/simplecov-ruby/simplecov) A gem for code coverage tracking
- [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers) A gem for testing assertions
- [VCR](https://github.com/vcr/vcr) / [Webmock](https://github.com/bblimke/webmock) Both utilized to stub HTTP requests in tests to simulate API interactions
- [Omniauth](https://github.com/omniauth/omniauth) A gem for Oauth 

## Installation Instructions
 - Fork Repository
 - `git clone <repo_name>`
 - `cd <repo_name>`
 - `bundle install`   
 - `rails db:{drop,create,migrate,seed}`
 - `rails s`

A step by step series of examples that tell you how to get a development environment running

Say what the step will be

Give the example
And repeat

until finished
End with an example of getting some data out of the system or using it for a little demo

Running the tests
Explain how to run the automated tests for this system

Sample Tests
Explain what these tests test and why

Give an example
Style test
Checks if the best practices and the right coding style has been used.

Give an example
Deployment
Add additional notes to deploy this on a live system

## Project Description

**Dungeons and Discord** Creates tools for running and playing a D&D game in a virtual space. Connects to discord profiles for account authorization, 


## Database Schema
```
  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "char_class"
    t.string "subclass"
    t.integer "level"
    t.string "race"
    t.string "background"
    t.string "alignment"
    t.integer "experience_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

 create_table "character_stats", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.integer "armor_class"
    t.integer "max_hit_point"
    t.integer "current_hit_points"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_stats_on_character_id"
  end
  ```

## Endpoints


1. `GET /api/v1/characters/{character_id}`
_Example Response:_
```

```

2. `GET /api/v1/charclasses/add_items`
_Example Response:_
```

```

3. `GET `
_Example Response:_
```

```
4. `GET ` 
_Example Response:_
```

```



## Contributors

- [Paul Bennett](https://www.linkedin.com/in/paul-bennett-dev/) -GitHub: [@pcbennett108](https://github.com/pcbennett108)
- [Allan Evans](https://www.linkedin.com/in/allan-evans-2c/) - GitHub: [@aevans27](https://github.com/aevans27)
- [Xander Hendry](https://www.linkedin.com/in/xander-hendry-70b804289/) - GitHub: [@XanderHendry](https://github.com/XanderHendry)
- [Joseph Lee](https://www.linkedin.com/in/joseph-lee702/) - GitHub: [@josephlee702](https://github.com/josephlee702)
- [Cory Powell](https://www.linkedin.com/in/coryrpow/) - GitHub: [@coryrpow](https://github.com/coryrpow)