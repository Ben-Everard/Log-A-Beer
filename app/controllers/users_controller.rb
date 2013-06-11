class UsersController < ApplicationController
  def index
  	@user = User.find(1)

  	@user = User.find(1)
  	@beers = @user.beers
  	@bars = @user.bars
  end

  def new
  end

  def create
  	
  	@user = User.find(1)
  	@bar=Bar.new(params[:bar])
  	@beer = Beer.new(params[:beer])
  	# @beer=Beer.new(params[:beer])
  	Bar.where("name = '#{@bar.name}'").each do |bar|
  		bar.beers.each do |beer|
  			if (beer.name.to_s == @beer.name.to_s)
  				beer.number_drank = beer.number_drank.to_i + 1
  			else
  				puts beer.name
  				puts @beer.name
  				@beer.number_drank = 1
  				@beer.save
  			end
  		end
  	end


  	# if (@beer.number_drank == nil)
  	# 	@beer.number_drank =1
  	# else
  	# 	@beer.number_drank +=1
  	# end
  			

  	@bar.save
  	


  	@b = Userbarbeer.new()
  	@b.user = User.find(1)
  	@b.beer = @beer
  	@b.bar = @bar
  	@b.save

  	redirect_to users_path

  	

  end

  def edit
  	@user = User.find(1)
  end

  def show
  	@user = User.find(1)
  	@beers = @user.beers
  	@bars = @user.bars
  end
end
