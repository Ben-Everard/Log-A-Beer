class Bar < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street


  has_many :beers, :through => :userbarbeers
  has_many :users, :through => :userbarbeers
  has_many :userbarbeers

end
