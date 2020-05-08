class DogsController < ApplicationController

  def index
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def update
  end

  def new
    @dog = Dog.new
  end

  def create
    @user = current_user
    @dog = @user.dogs.create(dog_params.merge(user_id: current_user.id))
    @dog.images.attach(params[:dog][:images])
    @dog.records.attach(params[:dog][:records])
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, records: [], images: [])
  end

end
