class Album < ActiveRecord::Base
  belongs_to :label
  belongs_to :project
  belongs_to :genre
end
