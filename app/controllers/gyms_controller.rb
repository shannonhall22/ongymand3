class GymsController < ApplicationController
  def index
    @gyms = Gym.all
    @search = Search.new
  end

  def show
    @gym = Gym.find(params[:id])

  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new
    @gym.name = params[:name]
    @gym.address = params[:address]
    @gym.city = params[:city]
    @gym.state = params[:state]
    @gym.zip = params[:zip]
    @gym.phone = params[:phone]
    @gym.website = params[:website]
    @gym.email = params[:email]
    @gym.rate = params[:rate]
    @gym.image_url = params[:image_url]
    @gym.weights = params[:weights]
    @gym.cardio = params[:cardio]
    @gym.studios = params[:studios]
    @gym.classes = params[:classes]
    @gym.pool = params[:pool]
    @gym.hot_tub = params[:hot_tub]
    @gym.basketball = params[:basketball]
    @gym.raquetball = params[:raquetball]
    @gym.trainer = params[:trainer]
    @gym.sauna = params[:sauna]
    @gym.search_id = params[:search_id]

    if @gym.save
      redirect_to gyms_url, :notice => "Gym created successfully."
    else
      render 'new'
    end
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])

    @gym.name = params[:name]
    @gym.address = params[:address]
    @gym.city = params[:city]
    @gym.state = params[:state]
    @gym.zip = params[:zip]
    @gym.phone = params[:phone]
    @gym.website = params[:website]
    @gym.email = params[:email]
    @gym.rate = params[:rate]
    @gym.image_url = params[:image_url]
    @gym.weights = params[:weights]
    @gym.cardio = params[:cardio]
    @gym.studios = params[:studios]
    @gym.classes = params[:classes]
    @gym.pool = params[:pool]
    @gym.hot_tub = params[:hot_tub]
    @gym.basketball = params[:basketball]
    @gym.raquetball = params[:raquetball]
    @gym.trainer = params[:trainer]
    @gym.sauna = params[:sauna]
    @gym.search_id = params[:search_id]

    if @gym.save
      redirect_to gym_url(@gym.id), :notice => "Gym updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @gym = Gym.find(params[:id])

    @gym.destroy

    redirect_to gyms_url, :notice => "Gym deleted."
  end
end
