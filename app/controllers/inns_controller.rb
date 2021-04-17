class InnsController < ApplicationController
  def index
    @inns = Inn.all
  end
  
  def new
    @inn = Inn.new
  end
  
  def create
    @inn = Inn.new(params.require(:inn).permit(:image, :name, :introduction, :price, :location))
      if @inn.save
        redirect_to :inns
      else
        render "new"
      end
  end
  
  def show
  end
  
  def uproad
  end
  
  def destroy
  end
end
