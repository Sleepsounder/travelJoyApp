class TripEventsController < ApplicationController

  def create
    @trip = Trip.find(params[:trip_id])
    @trip_event = @trip.trip_events.create(trip_event_params)
    redirect_to trip_path(@trip)
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @trip_event = @trip.trip_events.find(params[:id])
    redirect_to edit_trip_trip_event_path(@trip)
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @trip_event = @trip.trip_events.find(params[:id])
    redirect_to edit_trip_trip_event_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @trip_event = @trip.trip_events.find(params[:id])
    @trip_event.destroy 
    redirect_to trip_path(@trip)
  end

  private
    def trip_event_params
      params.require(:trip_event).permit(:eventname, :eventtime, :location, :journal)
    end

end


