class TripsController < ApplicationController
  def index
    @trips = Trip.all 
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save 
      redirect_to @trip
    else
      render 'new'
    end
  end


  private
  def trip_params
    params.require(:trip).permit(:title, :start_date, :end_date)
  end

end
