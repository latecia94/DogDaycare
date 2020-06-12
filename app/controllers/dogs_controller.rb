class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end

  def create
    @dog = current_user.dogs.create(dog_params.merge(user_id: current_user.id))
    @dog.images.attach(params[:dog][:images])
    @dog.records.attach(params[:dog][:records])
    @dog.save!
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :approved, :breeds_id, records: [], images: [])
  end

end
