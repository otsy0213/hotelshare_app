class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:image, :name, :gender, :age, :mail, :password_digest, :introduction))
      if @user.save
        flash[:notice] = "ユーザーを新規登録しました"
        redirect_to :inns
      else
        flash[:notice] = "登録に誤りがあります。"
        render "new"
      end
  end
  
  def show
  end
  
  def uproad
  end
  
  def destroy
  end
  
  def login_form
    @user = User.new
  end
  
  def login
    @user = User.find_by(mail: params[:mail],
                         password: params[:password])
      if @user
        flash[:notice] = "#{@user.name}さん、こんにちは"
        redirect_to :inns
      else
        @error_message = "パスワードが間違っています。"
        render :login
      end
  end
end
