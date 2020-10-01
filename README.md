# README

This is a bare bones Ember and Rails project using data from [Dedolist](https://dedolist.com/lists/entertainment/friends-tv-episodes/).

## Setup instructions

Rails: Using ruby 2.7.1 do a `bundle` in the root folder
Ember: In the client folder using Node 10+ do a `yarn` or `npm install`

Data Setup:
In the root folder run `rails db:create`


## Starting the application

In the root folder run `rails s`
Int he client folder run `yarn start`


## Extra notes

The Rails side is API only and uses the GEM [https://github.com/stas/jsonapi.rb](https://github.com/stas/jsonapi.rb)
