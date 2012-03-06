 class Member < ActiveRecord::Base
  belongs_to :project
  belongs_to :musician
end
