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

      # hashtag = "snowymountain42"
      # Instagram.create_subscription("tag", "https://ski-mountain-memories.herokuapp.com/sessions/sub_callback", object_id: hashtag)
      
      redirect_to new_trip_path, :notice => "You have added snowymountain42"
    else
      redirect_to new_instagram_path, :notice => "Sorry, you were not authenticated. Please try again."
    end
  end

  def destroy
    reset_session
    redirect_to new_instagram_path, :notice => "You've successfully logged out."
  end

  def sub_callback
    if params["hub.challenge"]
      render :text => params["hub.challenge"]
    else
      current_tag = params[:_json][0][:object_id]         #the tag that just popped

      # response = Instagram.tag_recent_media(current_tag)
      # need to add trip id

      response = Instagram.tag_recent_media(current_tag)
      response.each do |visual|
        Visual.create(  
          trip_id:        1, 
          media_type:     visual[:type], 
          time_taken:     visual[:created_time], 
          thumbnail_url:  visual[:images][:thumbnail][:url], 
          standard_url:   visual[:images][:standard_resolution][:url], 
          caption:        visual[:caption][:text], 
          lat:            visual[:location][:latitude], 
          lng:            visual[:location][:longitude])
      end     
    end
    return true
  end

end   #class end

