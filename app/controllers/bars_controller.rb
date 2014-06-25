class BarsController < ApplicationController

 def show
    @bar = Bar.find([params[:id])
  end

  def new
    @bar = Bar.new
  end

  def edit
    @bar = Bar.find([params[:id])
  end

  def create
    @bar = Bar.new(bar_params)

    if @bar.save
      redirect_to bars_url
    else
      render :new
    end

  end

  def update
    @bar = Bar.find(params[:id])

    if @bar.update_attributes(bar_params)
      redirect_to bars_path(@bar)
    else 
      render :edit
    end 
  end

  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy
    rediret_to bars_path
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :latitute, :longitude, :capacity, :description, :user_id, :category)
  end

end