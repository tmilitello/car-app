class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: {message: cars}
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: {message: car}
  end



end
