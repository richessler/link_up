class Favorite < ActiveRecord::Base
  belongs_to :listing
  belongs_to :user

end
