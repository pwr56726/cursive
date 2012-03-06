class Project < ActiveRecord::Base
  has_many :albums
  has_many :members
  has_many :musicians, :through => :members
end
