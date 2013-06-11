class Beer < ActiveRecord::Base
  attr_accessible :name, :number_drank

  has_many :users, :through => :userbarbeers
  has_many :bars, :through => :userbarbeers
  has_many :userbarbeers
end
