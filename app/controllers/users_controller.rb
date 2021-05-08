class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:image, :name, :gender, :age, :mail, :password, :password_confirmation, :introduction))
    @inns = @user.inns
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "ユーザーを新規登録しました"
        redirect_to :inns
      else
        flash[:notice] = "登録に誤りがあります。"
        render "new"
      end
  end
  
  def show
    @user = User.find(params[:id])
    @inn = @user.inns
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
      if @user.update(params.require(:user).permit(:image, :name, :password, :password_confirmation, :introduction))
        flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
        redirect_to @user
      else
        flash[:notice] = "内容に誤りがあります。"
        render "edit"
      end
  end
  
  def destroy
    @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "ユーザーを削除しました"
      redirect_to :inns
  end
  
end
