class Minutes < ActiveRecord::Base
  attr_accessible :actionpoints, :agenda, :attendees, :content, :date, :title
end
