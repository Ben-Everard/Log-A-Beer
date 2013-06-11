class SessionsController < ApplicationController
  def create
  end

  def new
  	@users=User.find(1)
  end

  def destroy
  end
end
