class User < ActiveRecord::Base
  attr_accessible :about, :email, :first_name, :last_name, :passowrd, :type_of_beer

  has_many :beers, :through => :userbarbeers
  has_many :bars, :through => :userbarbeers
  has_many :userbarbeers
end
