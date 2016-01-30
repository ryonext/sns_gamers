class User < ActiveRecord::Base
  authenticates_with_sorcery!

  acts_as_taggable
  acts_as_taggable_on :fav_games
end
