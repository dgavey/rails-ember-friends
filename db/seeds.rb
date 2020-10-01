# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   Character.create(name: 'Luke', movie: movies.first)
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

raw_data =  JSON.load(URI.open("https://api.dedolist.com/api/v1/entertainment/friends-tv-episodes/"))
raw_data.each do |episode|
    Episode.create({title:  episode["title"], episode_number: episode["episode_in_season"], season_number: episode["season"] , viewers: episode["us_viewers_in_millions"]})
end

