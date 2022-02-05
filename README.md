This projects holds no commercial or profit objective. It's intended to serve academical and personal development purposes as an Alkemy Challenge.

What you need to run the server for this api:

Ruby 3.1
Rails 6+
PostgreSQL

Run the standard commands to import gems (bundle install) and to create and migrate the database (rails db:create, rails db:migrate).

To begin using the API, first run rails s to start the instance of the api. You can test it through cURL or your favourite system by following the instructions provided by my [POSTMAN docs](https://documenter.getpostman.com/view/19395140/UVeGqkme). Take in consideration that I'm fairly new to producing documentation, so some portions of it may be redundant or not informative enough. I'm working to improve the quality of the docs.

This api contains a fully functional auth system based in JWP tokens and all the present endpoints are working. It also contains search functions for characters.
However, as this api has been done with less than 30 total hours of development, it's lacking several important functions, so I'll be making pull requests and updating to this project fairly often until I can finally dash off every missing element from the WIP list.


|                            WIP                               |
|       -                     -        -  |                -- -    |
| Immediate future                                 |Short term |
| Photos URL table for movies and characters       | Heroku or Capistrano deployment|
| Fixing movie-character many-to-many relation     | Front-end        |
|                                                  | Tests            |
|                                                  | Mailing          |
