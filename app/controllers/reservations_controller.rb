class ReservationsController < ApplicationController
       
    def index
    end
    
    def new
        @reservation = Reservation.new
    end
    
    def create
        @inn = @reservation.inn
        @reservation = Reservation.new(params.require(:reservation).permit(:user_id, :inn_id, :people, :start_date, :end_date, :total_price))
          if @reservation.save
            flash[:notice] = "予約しました。"
            redirect_to :users
          else
            flash[:notice] = "誤りがあるため登録できません。"
            render 'new'
          end
    end
    
    def show
    end
    
    def update
    end
    
    def destroy
    end
end
