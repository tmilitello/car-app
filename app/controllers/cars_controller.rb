class CarsController < ApplicationController

  def index
    cars = Car.all
    render json: {message: cars}
  end

  def show
    car = Car.find_by(id: params[:id])
    render json: {message: car}
  end

  def create
    car = Car.create(
      make: params[:make],
      model: params[:model], 
      color: params[:color]
    )

    render json: {message: car}
  end

  def update
    car = Car.find_by(id: params[:id])
    car.make = params[:make]
    car.model = params[:model]
    car.color = params[:color]
    car.save
    render json: {message: car}
  end

end
