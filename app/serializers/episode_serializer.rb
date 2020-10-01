class EpisodeSerializer
  include JSONAPI::Serializer
  attributes :title, :episode_number, :season_number, :viewers
end
