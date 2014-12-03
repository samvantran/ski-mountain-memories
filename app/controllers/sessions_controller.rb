class SessionsController < ApplicationController
  def new
    redirect_to Instagram.authorize_url(:redirect_uri => ENV["IG_CALLBACK"])
  end

  def create
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV["IG_CALLBACK"])
    session[:access_token] = response.access_token

    if session[:access_token]
      if !User.find_by(ig_id: response.user.id)
        User.create(user_name: response.user.username, ig_id: response.user.id, ig_profile_url: response.user.profile_picture)
      end

      redirect_to instagram_index_path
    else
      redirect_to new_instagram_path, :notice => "Sorry, you were not authenticated. Please try again."
    end
  end

  def destroy
    reset_session
    redirect_to new_instagram_path, :notice => "You've successfully logged out."
  end

  def sub_callback
    # Instagram.meet_challenge(params)
    # process_subscription(json, options={}, &block)

    # if params["hub.challenge"]
    # render :text => params["hub.challenge"]
  end


end

