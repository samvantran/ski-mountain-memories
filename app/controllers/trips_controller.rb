class TripsController < ApplicationController
  # protect_from_forgery :except => [:show, :genhashtag]

  def show
    @trip = Trip.find(params[:id])
    @lat = @trip.mountain.lat
    @lng = @trip.mountain.lng
    @zoom_level = @trip.mountain.zoom_level
    @visuals = @trip.visuals
  end

  def edit
  end

  def update
  end

  def new
    @trip = Trip.new
    3.times { @trip.users.build }
  end

  def create
    @message=""
    if params[:trip][:mountain_id]=="" #no mountain entered
      @message="Please select a mountain"
    else
      trip = Trip.new(mountain_id: params[:trip][:mountain_id], hashtag: params[:trip][:hashtag])
      if !trip.save #couldn't save.
      # JJK: I think this kind of behavior should be handled in the model and then written to ERRORS, and ERROrs should be in the view
        @message="Please select another hashtag"
      else
        Instagram.create_subscription("tag", "https://ski-mountain-memories.herokuapp.com/sessions/sub_callback", object_id: trip.hashtag)
        redirect_to trip_path(trip.id) and return
      end
    end
      redirect_to new_trip_path, notice: @message
    end
    

  def addvisuals
    @trip=Trip.find(params[:trip_id])
    @visuals=@trip.visuals.all.select {|visual| true}
    render template: "trips/addvisuals.js.erb"
  end

  def genhashtag
    @newhashtag=Trip.genhashtag
  end

  def testmap
  end
  
end
