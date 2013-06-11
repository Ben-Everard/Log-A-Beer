class Userbarbeer < ActiveRecord::Base
  belongs_to :user
  belongs_to :bar
  belongs_to :beer

  validate :validatebars
   attr_accessible :city, :name, :state 

  def validatebars
  	#validates :city, :name, :state, :uniqueness => { :case_sensitive => false }
  	baruniq = user.bars.validate :city, :name, :state, :uniqueness => { :case_sensitive => false }
  end
end
