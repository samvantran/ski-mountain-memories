class SessionsController < ApplicationController
  protect_from_forgery :except => [:sub_callback]

  def new
    redirect_to Instagram.authorize_url(:redirect_uri => ENV["IG_CALLBACK"])
  end

  def create
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV["IG_CALLBACK"])
    session[:access_token] = response.access_token

    if session[:access_token]
      User.find_by(ig_id: response.user.id) || User.create( user_name: response.user.username, 
                                                            ig_id: response.user.id, 
                                                            ig_profile_url: response.user.profile_picture)
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
  # Instagram.create_subscription("user", "https://ski-mountain-memories.herokuapp.com/sessions/sub_callback")
  # Instagram.create_subscription("tag", "http://localhost:3000/sessions/sub_callback", options: {object_id: "snow"})
  # also delete subscriptins sometime

    if params["hub.challenge"]
      render :text => params["hub.challenge"]
    else
      current_tag = params[:_json][0][:object_id]         #the tag that just popped
      
      response = Instagram.tag_recent_media(current_tag)
      Media.create( trip_id:        # need to add trip id, 
                    photo:          response[:data][photo_i][:type],
                    time_taken:     response[:data][photo_i][:created_time], 
                    thumbnail_url:  response[:data][photo_i][:images][:thumbnail][:url], 
                    standard_url:   response[:data][photo_i][:images][:standard_resolution][:url], 
                    caption:        response[:data][photo_i][:caption][:text])
    end
  end
end   #class end

