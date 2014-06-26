class ReservationsController < ApplicationController
  before_filter :load_bar

  def create
    @reservation = @bar.reservations.new(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      redirect_to bars_path, notice: 'Reservation created successfully'
    else
      render 'bars'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @bar = @reservation.bar

    if 
      raise AuthenticationError
  end
end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
  end

  def load_bar
    @bar = Bar.find(params[:bar_id])
  end
  
end
