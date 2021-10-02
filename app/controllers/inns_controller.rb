class InnsController < ApplicationController
  
  def index
    @inns = Inn.all
  end
  
  def new
    @inn = Inn.new
  end
  
  def create
    @inn = Inn.new(params.require(:inn).permit(:image, :name, :introduction, :price, :location, :user_id))
    @inn.user_id = @current_user.id
      if @inn.save
        flash[:notice] = "登録しました。"
        redirect_to :inns
      else
        flash[:notice] = "誤りがあるため登録できません。"
        render "new"
      end
  end
  
  def show
    @inn = Inn.find(params[:id])
    @user = @inn.user
  end
  
  def edit
    @inn = Inn.find(params[:id])
  end
  
  def update
    @inn = Inn.find(params[:id])
    if @inn.update(params.require(:inn).permit(:image, :name, :introduction, :price, :location))
      flash[:notice] = "物件情報を更新しました。"
      redirect_to inns_index_path
    else
      flash[:notice] = "更新できませんでした。"
      render 'edit'
    end
  end
  
  def destroy
    @inn = Inn.find(params[:id])
      @inn.destroy
      flash[:notice] = "物件を削除しました"
      redirect_to :inns
  end
  
  def search_result
    @search = Inn.ransack(params[:q])
    @inns = @search.result
  end
  
end
