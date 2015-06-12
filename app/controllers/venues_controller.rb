class VenuesController < ApplicationController
  before_action :find_venue, only: [:edit, :update, :show, :destroy]

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      redirect_to venues_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @venue.update(venue_params)
      redirect_to venue_path(@venue.id)
    else
      render :edit
    end
  end

  def show
    @events = @venue.events
  end

  def destroy
    @venue.destroy
    redirect_to venues.path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :location, :phone_number, :website)
  end

  def find_venue
    @venue = Venue.find(params[:id])
  end

end
