class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(mail: params[:mail].downcase)
    binding.pry
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "#{@user.name}さん、こんにちは"
        redirect_to :inns
      else
        render 'new'
      end
  end
  
  def destroy
  end
end
