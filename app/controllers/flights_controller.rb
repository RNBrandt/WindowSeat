class FlightsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  def index
    @flights = Flight.all
    # if @flights.length == 0
    #   flash[:alert] = "You have no upcoming flights, create one to get started"
    # end
  end

  def show
  end

  def new
    @flight = Flight.new
  end

  def edit
  end

  def create
    # Time.zone = flight_params[:time_zone]
    @flight = Flight.new(flight_params)
    @flight.user = current_user
    respond_to do |format|
      if @flight.save
        format.html { redirect_to user_flights_url, notice: 'Flight was successfully created.' }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to user_flights_url, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to user_flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_flight
      @flight = Flight.find(params[:id])
    end

    def flight_params
      params.require(:flight).permit(:flight_time, :flight_number, :checkin_time, :confirmation_number)
    end
end
