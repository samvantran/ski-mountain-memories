class SessionsController < ApplicationController
  protect_from_forgery :except => [:sub_callback]

  def new
    redirect_to Instagram.authorize_url(:redirect_uri => ENV["IG_CALLBACK"])
  end

  def create
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV["IG_CALLBACK"])
    session[:access_token] = response.access_token

    if session[:access_token]
      user=User.find_by(ig_id: response.user.id) || User.create( user_name: response.user.username, ig_id: response.user.id, ig_profile_url: response.user.profile_picture)

      session[:user_id]=user.id
      redirect_to new_trip_path

    else
      redirect_to root_path, :notice => "Sorry, you were not authenticated. Please try again."
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
      current_tag = params[:_json][0][:object_id]         # the tag that just popped
      puts "$$$$$$$$$$$CURRENT TAG: #{current_tag}"
      trip_id = Trip.find_by(hashtag: current_tag).id
      # trip_id = trip.id if trip 
      # discuss with team

      #maybe we need to be able to handle multiple updates ?
# {"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"dd", "time"=>1417888390, "subscription_id"=>15013339, "data"=>{}}], "session"=>{"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"dd", "time"=>1417888390, "subscription_id"=>15013339, "data"=>{}}]}}

# {"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"23", "time"=>1417888390, "subscription_id"=>15012690, "data"=>{}}], "session"=>{"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"23", "time"=>1417888390, "subscription_id"=>15012690, "data"=>{}}]}}

# {"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"potatos", "time"=>1417888840, "subscription_id"=>15026388, "data"=>{}}], "session"=>{"_json"=>[{"changed_aspect"=>"media", "object"=>"tag", "object_id"=>"potatos", "time"=>1417888840, "subscription_id"=>15026388, "data"=>{}}]}}

      response = Instagram.tag_recent_media(current_tag)
      response.each do |visual|
        Visual.create(  
          trip_id:        trip_id, 
          media_type:     visual[:type], 
          time_taken:     visual[:created_time], 
          thumbnail_url:  visual[:images][:thumbnail][:url], 
          standard_url:   visual[:images][:standard_resolution][:url], 
          caption:        visual[:caption][:text], 
          lat:            visual[:location][:latitude], 
          lng:            visual[:location][:longitude])
      end     
    end
    return true     # is this necessary?
  end

end   #class end

