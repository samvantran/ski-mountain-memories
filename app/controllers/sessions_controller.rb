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

      redirect_to new_trip_path

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
      #currently not accepting payloads with more than 1 update, but every recent_media query will capture it regardless of the contents of the update. 
      current_tag = params[:_json][0][:object_id]         # the tag that just popped
      puts "$$$$$$$$$$$CURRENT TAG: #{current_tag}$$$$$$$$$$$$"

      trip_id = Trip.find_by(hashtag: current_tag).id

        response = Instagram.tag_recent_media(current_tag)
        puts response
        response.each do |visual|
              if visual[:location] #does location data exist?
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
    
    end
    return true     # is this necessary?
  end

end   #class end


# response = Instagram.tag_recent_media(current_tag)
# response=
# <Hashie::Mash attribution=nil caption=#<Hashie::Mash created_time="1417902456" from=#<Hashie::Mash full_name="kuruvilla.jimmy" id="1582526975" profile_picture="https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg" username="kuruvilla.jimmy"> id="869751301580185912" text="#kindgrapecoding"> comments=#<Hashie::Mash count=0 data=[]> created_time="1417902456" filter="Normal" id="869751301085258039_1582526975" images=#<Hashie::Mash low_resolution=#<Hashie::Mash height=306 url="http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928738_907981165903560_804944057_a.jpg" width=306> standard_resolution=#<Hashie::Mash height=640 url="http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928738_907981165903560_804944057_n.jpg" width=640> thumbnail=#<Hashie::Mash height=150 url="http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928738_907981165903560_804944057_s.jpg" width=150>> likes=#<Hashie::Mash count=0 data=[]> link="http://instagram.com/p/wR-jNAHuE3/" location=#<Hashie::Mash latitude=40.7062028 longitude=-73.8353233> tags=["kindgrapecoding"] type="image" user=#<Hashie::Mash bio="" full_name="kuruvilla.jimmy" id="1582526975" profile_picture="https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg" username="kuruvilla.jimmy" website=""> users_in_photo=[]>
