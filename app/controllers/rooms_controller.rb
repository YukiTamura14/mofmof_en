class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def new
    @room = Room.new
    Station::FORM.times { @room.stations.build }
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @rooms = Room.all
  end

  def show
  end

  def edit
    (Station::FORM - @room.stations.count).times { @room.stations.build }
  end

  def update
    if @room.update(room_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to root_path
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:room_name,
                                 :price,
                                 :adress,
                                 :built_years,
                                 :feature,
             stations_attributes:[:id, :station_name, :line_to_station, :minutes_on_foot]
             ) # idを通すのはupdateのため、外すとレコードが増えて次回accepts_nested_attributes_forのlimitにひっかかる
  end

end
