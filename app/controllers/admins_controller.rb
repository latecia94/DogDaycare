class AdminsController < ApplicationController

  def index
    @dog = Dog.all
    if params[:search]
      @dog = Dog.search(params[:search]).order("name ASC")
    else
      @dog = Dog.all.order("name ASC")
    end
  end

end
