class TripsController < ApplicationController
  
  def index
    @trips = Trip.all 
  end

  def new
    @trip = current_user.trips.build 
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = current_user.trips.build(trip_params)

    if @trip.save 
      redirect_to @trip
    else
      render 'new'
    end
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      redirect_to @trip
    else 
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    redirect_to trips_path
  end


  private
  def trip_params
    params.require(:trip).permit(:title, :start_date, :end_date)
  end

end
