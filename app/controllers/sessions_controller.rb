class SessionsController < ApplicationController
  def new
    redirect_to Instagram.authorize_url(:redirect_uri => ENV["IG_CALLBACK"])
  end

  def create
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV["IG_CALLBACK"])
    session[:access_token] = response.access_token
    # raise response.inspect
    if session[:access_token]
      binding.pry
      User.find_by(ig_id: response.id) || User.create(user_name: response.user.username, ig_id: response.user.id, ig_profile_url: response.user.profile_picture)
      redirect_to instagram_index_path
    else
      redirect_to new_instagram_path, :notice => "Sorry, you were not authenticated. Please try again."
    end
  end

  def destroy
    reset_session
    redirect_to new_instagram_path
  end
end

