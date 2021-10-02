class ReservationsController < ApplicationController
    # before_action :permit_params, only: :confirm
    
    def index
    end
    
    def new
        @reservation = Reservation.new
        @inn = Inn.find(params[:inn_id])
    end
    
    def confirm
        @reservation = Reservation.new(params.require(:reservation).permit(:id, :user_id, :inn_id, :people, :start_date, :end_date, :total_price))
        @reservation.total_price = (@reservation.end_date - @reservation.start_date) * @reservation.people * @reservation.inn.price
        # @inn = Inn.find(params[:inn_id])
    end

    def create
        @reservation = Reservation.new(params.require(:reservation).permit(:id, :user_id, :inn_id, :people, :start_date, :end_date, :total_price))
          if @reservation.save
            flash[:notice] = "予約しました。"
            redirect_to inns_index_path
          else
            flash[:notice] = "誤りがあるため登録できません。"
            render 'new'
          end
    end
    
    def show
        @reservation = Reservation.find(params[:id])
        @user = @reservation.user
    end
    
    def update
    end
    
    def destroy
    end
    
#     def permit_params
# 		@attr = params.require(:reservation).permit(:user_id, :inn_id, :start_date, :end_date, :people, :total_price)
# 	end
end
