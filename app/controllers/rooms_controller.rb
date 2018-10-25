class RoomsController < ApplicationController
  def new
    @room = Room.new
    @room.station.build
  end

  def create
    @room = Room.new(room_params)
    binding.pry
    if @room.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit

  end

  def update
    
  end

  def destroy

  end

  private

  def room_params
    params.require(:room).permit(:room_name,
                                 :price,
                                 :adress,
                                 :built_years,
                                 :feature,
             station_attributes:[:station_name, :line_to_station, :minutes_on_foot, :room_id]
             )
  end

end
