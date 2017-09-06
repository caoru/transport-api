class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :destroy]

  # GET /cars
  def index
    @cars = Car.all
    data = { "cars" => @cars }
    json_response(data)
  end

  # POST /cars
  def create
    @car = Car.create!(car_params)
    data = { "car" => @car }
    json_response(data, :created)
  end

  # GET /cars/:id
  def show
    data = { "car" => @car }
    json_response(data)
  end

  # PUT /cars/:id
  def update
    @car.update(car_params)
    head :no_content
  end

  # DELETE /cars/:id
  def destroy
    @car.destroy
    head :no_content
  end

  private

  def car_params
    params.permit(
      :license_number,
      :model,
      :size,
      :manufacturer_id,
      :company_id
    )
  end

  def set_cars
    @car = Car.find(params[:id])
  end
end
