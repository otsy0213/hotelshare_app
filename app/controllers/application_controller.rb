class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :set_search
    include SessionsHelper
    
    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def set_search
      @search = Inn.ransack(params[:q])
      @search_products = @search.result
    #  参考URL https://qiita.com/gyu_outputs/items/6cad794b4ca3868e976e
    end
end
