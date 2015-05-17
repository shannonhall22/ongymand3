class Gym2sController < ApplicationController
  def index
    @gym2s = Gym2.all
  end

  def show
    @gym2 = Gym2.find(params[:id])
  end

  def new
    @gym2 = Gym2.new
  end

  def create
    @gym2 = Gym2.new
    @gym2.name = params[:name]
    @gym2.address = params[:address]
    @gym2.city = params[:city]
    @gym2.state = params[:state]
    @gym2.zip = params[:zip]
    @gym2.phone = params[:phone]
    @gym2.website = params[:website]
    @gym2.weights = params[:weights]
    @gym2.cardio = params[:cardio]
    @gym2.pool = params[:pool]
    @gym2.rate = params[:rate]
    @gym2.image_url = params[:image_url]

    if @gym2.save
      redirect_to gym2s_url, :notice => "Gym2 created successfully."
    else
      render 'new'
    end
  end

  def edit
    @gym2 = Gym2.find(params[:id])
  end

  def update
    @gym2 = Gym2.find(params[:id])

    @gym2.name = params[:name]
    @gym2.address = params[:address]
    @gym2.city = params[:city]
    @gym2.state = params[:state]
    @gym2.zip = params[:zip]
    @gym2.phone = params[:phone]
    @gym2.website = params[:website]
    @gym2.weights = params[:weights]
    @gym2.cardio = params[:cardio]
    @gym2.pool = params[:pool]
    @gym2.rate = params[:rate]
    @gym2.image_url = params[:image_url]

    if @gym2.save
      redirect_to gym2_url(@gym2.id), :notice => "Gym2 updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @gym2 = Gym2.find(params[:id])

    @gym2.destroy

    redirect_to gym2s_url, :notice => "Gym2 deleted."
  end
end
