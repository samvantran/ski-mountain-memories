class TripsController < ApplicationController
  protect_from_forgery :except => [:show]

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
    trip = Trip.new(mountain_id: params[:trip][:mountain_id], hashtag: params[:trip][:hashtag])
    trip.save

    redirect_to trip_path(trip.id)
  end

end
