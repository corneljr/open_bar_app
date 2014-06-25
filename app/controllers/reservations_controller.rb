class ReservationsController < ApplicationController
  before_filter :load_bar, :load_user

  def create
    @reservation = @bars.reservations.build.(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      redirect_to bars_path, notice: 'Reservation created successfully'
    else
      render 'bars'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params

end
