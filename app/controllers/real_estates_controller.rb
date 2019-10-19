class RealEstatesController < ApplicationController
  def index
    @real_estates = RealEstate.all
    @real_estate = RealEstate.new
  end
  
  def new
    @real_estate = RealEstate.new
    2.times { @real_estate.near_stations.build }
  end

  def create
    @real_estate = RealEstate.create(real_estate_params)
    if @real_estate.save
      flash[:notice] = "物件を登録しました"
      redirect_to new_real_estate_path
    else
      render :new
    end    
  end

  def destroy; end

  def edit; end

  def update; end

  private
  def real_estate_params
  params.require(:real_estate).permit(:room_name,:room_rent,:room_address,:room_age,:room_remarks,stations_attributes:[:id,:station_line,:station_name,:walk_from])
  end  
end
