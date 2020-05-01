class DogsController < ApplicationController

  def index
  end

  def show

  end

  def update

  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :photo, :records, :breed, :sub_breed)
  end

end
