class UsersController < ApplicationController

  def show
    @usertrips=current_user.trips.all
  end


end
