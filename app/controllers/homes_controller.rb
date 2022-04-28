class HomesController < ApplicationController
  before_action :set_homes_all, only: [:index]

  def index
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      render 'index'
    else
      render 'new'
    end
  end

  private

  def home_params
    params.permit(:name, :school, :address, :phone, :department, :favorite, :title, :caption)
  end

  def set_homes_all
    @homes = Home.all
  end

end