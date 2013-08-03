class Meeting < ActiveRecord::Base
  attr_accessible :actionpoints, :agenda, :content, :date, :title
end
