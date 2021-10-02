class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(mail: params[:session][:mail].downcase)
      if @user && @user.authenticate(params[:session][:password])
        log_in @user
        flash[:notice] = "#{@user.name}さん、こんにちは"
        redirect_to @user
      else
        flash[:notice] = "メールアドレスもしくはパスワードが違います。"
        render 'new'
      end
  end
  
  def destroy
    log_out
    flash[:notice] = "ログアウトしました。"
    redirect_to :inns
  end
  
end
